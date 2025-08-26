class MessagesController < ApplicationController

  SYSTEM_PROMPT = "You are a cooking chief assistant. Help me at finding cooking recipes giving the ingredients i give you"


  def create
    @chat = Chat.find(params[:chat_id])
    @message = Message.new(message_params)
    @message.role = "user"
    @message.chat = @chat
    if @message.valid?
      @chat.with_instructions(SYSTEM_PROMPT).ask(@message.content)
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


end
