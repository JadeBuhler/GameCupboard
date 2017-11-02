ActiveAdmin.register User do
#White list the necessary params of a user.
permit_params :first_name, :last_name, :address, :city, :province, :email
end
