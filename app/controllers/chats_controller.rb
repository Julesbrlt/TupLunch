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
      redirect_to chat_path(@chat)
    else
      render :new
    end
  end

end
