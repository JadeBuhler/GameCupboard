class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.decimal :price
      t.string :status

      t.timestamps
    end
  end
end
