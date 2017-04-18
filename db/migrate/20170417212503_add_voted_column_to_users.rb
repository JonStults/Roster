class AddVotedColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :has_voted, :boolean
  end
end
