class DropFavorites < ActiveRecord::Migration[7.1]
  def change
    drop_table :favorites
    drop_table :chats
    drop_table :messages
  end
end
