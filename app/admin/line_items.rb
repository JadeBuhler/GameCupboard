ActiveAdmin.register LineItem do
# White list the necessary parameters of a line item.
permit_params :price, :quantity, :order_id

end
