class CreateBoardGames < ActiveRecord::Migration[5.1]
  def change
    create_table :board_games do |t|
      t.string :name
      t.integer :min_players
      t.integer :max_players
      t.string :play_time
      t.decimal :price

      t.timestamps
    end
  end
end
