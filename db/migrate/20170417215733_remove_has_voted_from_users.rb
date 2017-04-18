class RemoveHasVotedFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :has_voted, :boolean
  end
end
