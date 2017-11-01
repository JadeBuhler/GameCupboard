class CreateExpansions < ActiveRecord::Migration[5.1]
  def change
    create_table :expansions do |t|
      t.string :Name
      t.decimal :Price

      t.timestamps
    end
  end
end
