class ChatsController < ApplicationController

  def show
    @chat = Chat.find(params[:id])
    @message = Message.new
  end

  def new
    @chat = Chat.new
  end

  def create
    @chat = Chat.new(title: "Vide ton frigo avec TupLunch", model_id: "gpt-4.1-nano")
    @chat.user = current_user
    if @chat.save
      redirect_to chat_message_path(@chat)
    else
      redirect_to root_path, alert: "Impossible de créer le chat"
    end
  end

end
