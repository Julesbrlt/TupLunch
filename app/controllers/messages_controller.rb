class MessagesController < ApplicationController

  SYSTEM_PROMPT = "You are a cooking chief assistant. \
    Your task is to find a recipe using the ingredients given by the user. \
    When the user asks for a recipe you should always share the name and the URL saying 'Voir la recette' of the recipe and answer with recipes that you know. \
    If the user tells you what ingredient he have you should propose recipes you know that contains all the ingredients that the user write in the chat, if you only have one of the ingredient in a recipe tell the user you don't have a recipe with exactly the ingredient but with the ingredient he have he could do this recipe but should by all the other ingredients.
    Then you have to ask him if he wants assistance during cooking.
    If the user answer yes you should display the different steps of the recipe with further details on the cooking time, quantity of ingredients. Also add little tips on cooking techniques
    End the message by wishing the user a happy cooking experience.\
    Answer 'Je ne connais pas de recette à partir de ces ingrédients précis' if you don't find recipes using at least one ingredient given by the user
    Your answer should be in markdown."


  def create
    @chat = Chat.find(params[:chat_id])
    @message = Message.new(message_params)
    @message.role = "user"
    @message.chat = @chat
    embedding = RubyLLM.embed(message_params)
    recipe = Recipe.nearest_neighbors(:embedding, embedding.vectors, distance: "euclidean").first
    instructions = SYSTEM_PROMPT
    instructions += recipe_prompt(recipe)
    if @message.valid?
      @chat.with_instructions(instructions).ask(@message.content)
      @chat.messages.where(role: "system").delete_all
      respond_to do |format|
        format.turbo_stream
        format.html { redirect_to chat_path(@chat) }
      end
    else
      respond_to do |format|
        format.turbo_stream { render turbo_stream: turbo_stream.replace("new_message", partial: "messages/form", locals: { chat: @chat, message: @message }) }
        format.html { render "chats/show", status: :unprocessable_entity }
      end
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end

  def recipe_prompt(recipe)
    "Recipe id: #{recipe.id}, name: #{recipe.name}, url: #{recipe_url(recipe)}"
  end
end
