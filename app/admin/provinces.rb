ActiveAdmin.register Province do
#White list the necessary params of an expansion
permit_params :name, :gst, :pst, :hst

end
