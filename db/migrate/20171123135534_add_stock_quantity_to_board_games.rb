class AddStockQuantityToBoardGames < ActiveRecord::Migration[5.1]
  def change
    add_column :board_games, :stock_quantity, :integer
  end
end
