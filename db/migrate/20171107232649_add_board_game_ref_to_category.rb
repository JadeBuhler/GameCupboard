class AddBoardGameRefToCategory < ActiveRecord::Migration[5.1]
  def change
    add_reference :categories, :board_game, foreign_key: true
  end
end
