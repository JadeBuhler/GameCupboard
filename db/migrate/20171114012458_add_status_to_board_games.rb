class AddStatusToBoardGames < ActiveRecord::Migration[5.1]
  def change
    add_column :board_games, :status, :string
  end
end
