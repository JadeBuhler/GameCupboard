ActiveAdmin.register User do
  # White list the necessary params of an expansion
  permit_params :username, :street, :city, :postal_code, :province_id
end
