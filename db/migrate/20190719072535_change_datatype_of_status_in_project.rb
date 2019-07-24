class ChangeDatatypeOfStatusInProject < ActiveRecord::Migration[5.2]
  def change
  	 change_column :projects, :status, :integer, using: 'status::integer', default: 0
  end
end
