class RemoveRecipFromChat < ActiveRecord::Migration[7.1]
  def change
    remove_reference :chats, :recipe
  end
end
