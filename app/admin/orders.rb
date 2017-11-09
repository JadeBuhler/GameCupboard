ActiveAdmin.register Order do
    #White list the necessary params of an order
    permit_params :price, :status, :user_id
end
