ActiveAdmin.register Expansion do
#White list the necessary params of an Expansion
permit_params :name, :price, :image, :board_game_id
end
