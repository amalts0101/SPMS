ActiveAdmin.register User do
  permit_params :name, :email, :password, :password_confirmation, project_ids: []

  filter :name
  filter :email
  config.sort_order = 'id_asc'
  index do
    selectable_column
    id_column
    column :name
    column :email
    column :created_at
    actions
  end

   form do |f|
    f.inputs do
      f.input :name
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :projects, :as => :check_boxes
    end
    f.actions
  end

  show do
    attributes_table do
      row :name
      row :email
      row :projects
    end
    active_admin_comments
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
