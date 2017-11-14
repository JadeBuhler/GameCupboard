class AddDescriptionToBoardGames < ActiveRecord::Migration[5.1]
  def change
    add_column :board_games, :description, :text
  end
end
