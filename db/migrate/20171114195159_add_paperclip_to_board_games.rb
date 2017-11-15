class AddPaperclipToBoardGames < ActiveRecord::Migration[5.1]
  def change
    add_attachment :board_games, :image
  end
end
