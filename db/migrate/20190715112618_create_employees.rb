class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :emp_name
      t.timestamps
    end
  end
end
