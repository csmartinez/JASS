class RenameClassroomsUsers < ActiveRecord::Migration[5.2]
  def change
    rename_table :classrooms_users, :classes
  end
end
