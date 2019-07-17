class AddDefaultProjectsToEmployee < ActiveRecord::Migration[5.2]
  def change
  	add_column :employees , :default_project , :string
  end
end
