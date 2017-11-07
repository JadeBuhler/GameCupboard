ActiveAdmin.register Category do
    # White list the necessary parameters of a category.
    permit_params :name, :board_game_id

end
