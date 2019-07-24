class AddReferenceToUserProject < ActiveRecord::Migration[5.2]
  def change
  	add_reference :user_projects, :user, index: true
  	add_reference :user_projects, :project, index: true
  end
end
