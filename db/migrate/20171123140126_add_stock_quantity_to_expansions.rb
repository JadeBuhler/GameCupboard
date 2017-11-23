class AddStockQuantityToExpansions < ActiveRecord::Migration[5.1]
  def change
    add_column :expansions, :stock_quantity, :integer
  end
end
