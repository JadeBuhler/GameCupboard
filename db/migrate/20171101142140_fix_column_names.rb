class FixColumnNames < ActiveRecord::Migration[5.1]
  def change
    change_table :users do |t|
      t.rename :FirstName, :first_name
      t.rename :LastName, :last_name
      t.rename :Address, :address
      t.rename :City, :city
      t.rename :Province, :province
      t.rename :Email, :email
    end

    change_table :board_games do |t|
      t.rename :Name, :name
      t.rename :MinPlayers, :min_players
      t.rename :MaxPlayers, :max_players
      t.rename :PlayTime, :play_time
      t.rename :Price, :price
    end

    change_table :expansions do |t|
      t.rename :Name, :name
      t.rename :Price, :price
    end
  end
end
