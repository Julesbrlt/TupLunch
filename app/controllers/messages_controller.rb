class MessagesController < ApplicationController

  SYSTEM_PROMPT = "You are a cooking chief assistant. \
    Your task is to find a recipe using the ingredients given by the user. \
    Always share the name and the URL of the recipe. \
    Always answer with recipes that you know.
    Answer 'Je ne connais pas de recette à partir de ces ingéredients précis' if you don't find recipes using ingredients given by the user
    Your answer should be in markdown. \
    Here are the nearest recipes based on the user's ingredients: "


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
