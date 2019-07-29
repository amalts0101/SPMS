ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span ("Welcome to SPMS | Admin Panel")
      end
    end


    # Here is an example of a simple dashboard with columns and panels.
    section status_tag 'Projects' do
      columns do
        column do
          panel "Recent Projects" do
            ul do
              Project.last(5).map do |project|
                li link_to(project.name, admin_project_path(project))
              end
            end
          end
        end
      end
    end

    section status_tag 'Users'do
      columns do
        column do
          panel "Recent Users" do
            ul do
              User.last(5).map do |user|
                li link_to(user.name, admin_user_path(user))
              end
            end
          end
        end
      end
    end

     section status_tag 'Roles'do
      columns do
        column do
          panel "Roles" do
            ul do
              Role.last(5).map do |role|
                li link_to(role.name, admin_role_path(role))
              end
            end
          end
        end
      end
    end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
