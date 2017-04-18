class AddCountColumnToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :count, :integer
  end
end
