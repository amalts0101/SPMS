class RenameTableEmployeesToUsers < ActiveRecord::Migration[5.2]
  def change
    rename_table :employees, :users
  end
end
