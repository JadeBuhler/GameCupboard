class AddPaperclipToExpansion < ActiveRecord::Migration[5.1]
  def change
    add_attachment :expansions, :image
  end
end
