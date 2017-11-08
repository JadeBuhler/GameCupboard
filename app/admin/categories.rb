ActiveAdmin.register Category do
    #White list the necessary params of a category
    permit_params :name
end
