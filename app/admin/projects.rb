ActiveAdmin.register Project do
permit_params :name, :status, :logo

  index do
    selectable_column
    id_column
    column :name
    column :status
    column :created_at
    column :updated_at
    column :logo
    actions
  end
  form do |f|
    f.inputs "Project Details" do
    f.input :name
    f.input :status,as: :select, collection: ['0','1']
    f.input :logo, as: :file
    end
    f.actions
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
