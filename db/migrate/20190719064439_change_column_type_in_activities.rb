class ChangeColumnTypeInActivities < ActiveRecord::Migration[5.2]
  def up
    change_column :activities, :hours, :decimal, precision: 10, scale: 2, using: 'hours::decimal'
    rename_column :activities, :activity_name, :name
    remove_column :activities, :comments, :string
  end

  def down
    change_column :activities, :hours, :string
    rename_column :activities, :name, :activity_name
    add_column :activities, :comments, :string
  end
end
