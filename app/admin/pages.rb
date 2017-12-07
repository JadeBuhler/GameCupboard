ActiveAdmin.register Page do
  # White list the necessary params of an order
  permit_params :name, :content
end
