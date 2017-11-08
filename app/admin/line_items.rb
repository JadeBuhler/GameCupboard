ActiveAdmin.register LineItem do
    #White list the necessary params of a line item
    permit_params :quantity, :price

end
