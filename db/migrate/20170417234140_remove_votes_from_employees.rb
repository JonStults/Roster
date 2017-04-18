class RemoveVotesFromEmployees < ActiveRecord::Migration
  def change
    remove_column :employees, :votes, :integer
  end
end
