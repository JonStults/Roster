class AddColumnsToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :name, :string
    add_column :employees, :image, :string
    add_column :employees, :title, :string
    add_column :employees, :bio, :text
  end
end
