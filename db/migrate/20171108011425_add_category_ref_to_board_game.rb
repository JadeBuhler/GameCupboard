class AddCategoryRefToBoardGame < ActiveRecord::Migration[5.1]
  def change
    add_reference :board_games, :category, foreign_key: true
  end
end
