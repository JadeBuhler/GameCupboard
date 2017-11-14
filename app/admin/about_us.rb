ActiveAdmin.register_page "about_us" do

  page_action :foo, method: :post do
    # do some logic using params['my_field']
    redirect_to "/about.html.erb"
  end

  content do
    form title: "about_us", method: :post do |f|
      f.input :content, type: :text, name: 'content'
      f.input :submit, type: :submit
    end
  end

end
