ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end

    columns do
      column do
        panel "About Us" do
            form title: "About Us", action: '/pages/about.html.erb', method: :post do |f|
               f.input :content, type: :text, name: 'content'
               f.input :submit, type: :submit
             end
          end
        end
      end

      columns do
        column do
          panel "Contact Us" do
            form title: "Contact Us", method: :post do |f|
               f.input :content, type: :text, name: 'content'
               f.input :submit, type: :submit
             end
          end
        end
      end
    end
end
