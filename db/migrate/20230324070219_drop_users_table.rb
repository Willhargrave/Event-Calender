class DropUsersTable < ActiveRecord::Migration[7.0]
  def up
    drop_table :model_names
  end

end
