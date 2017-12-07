ActiveAdmin.register Expansion do
  # White list the necessary params of an expansion
  permit_params :name, :price, :image, :description, :status, :stock_quantity, :board_game_id
end
