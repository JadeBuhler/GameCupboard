ActiveAdmin.register BoardGame do
# White list the necessary parameters of a board game.
permit_params :name, :min_players, :max_players, :play_time, :price, :image, :description, :status, :category_id

end
