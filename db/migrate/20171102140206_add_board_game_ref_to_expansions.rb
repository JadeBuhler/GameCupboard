class AddBoardGameRefToExpansions < ActiveRecord::Migration[5.1]
  def change
    add_reference :expansions, :board_game, foreign_key: true
  end
end
