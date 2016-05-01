class AddRoldToUsers < ActiveRecord::Migration
  def change
    add_column :users, :role, :moderator
  end
end
