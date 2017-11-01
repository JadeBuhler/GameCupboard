class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :FirstName
      t.string :LastName
      t.string :Address
      t.string :City
      t.string :Province
      t.string :Email

      t.timestamps
    end
  end
end
