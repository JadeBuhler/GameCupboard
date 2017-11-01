class CreateExpansions < ActiveRecord::Migration[5.1]
  def change
    create_table :expansions do |t|
      t.string :name
      t.decimal :price

      t.timestamps
    end
  end
end
