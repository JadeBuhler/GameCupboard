class AddDescriptionAndStatusToExpansions < ActiveRecord::Migration[5.1]
  def change
    add_column :expansions, :description, :text
    add_column :expansions, :status, :string
  end
end
