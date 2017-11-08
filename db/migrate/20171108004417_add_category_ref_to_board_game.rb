class AddCategoryRefToBoardGame < ActiveRecord::Migration[5.1]
  def change
    add_reference :board_games, :Category, foreign_key: true
  end
end
