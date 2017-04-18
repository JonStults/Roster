class AddVoteColumnToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :votes, :integer
  end
end
