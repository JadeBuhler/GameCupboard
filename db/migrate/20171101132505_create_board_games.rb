class CreateBoardGames < ActiveRecord::Migration[5.1]
  def change
    create_table :board_games do |t|
      t.string :Name
      t.integer :MinPlayers
      t.integer :MaxPlayers
      t.string :PlayTime
      t.decimal :Price

      t.timestamps
    end
  end
end
