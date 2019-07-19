class AddReferencesToActivities < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :date, :datetime
    add_reference :activities, :user, foreign_key: true, index: true
    add_reference :activities, :project, foreign_key: true, index: true
  end
end
