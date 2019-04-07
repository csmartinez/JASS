class AddPasscodeToUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :admin_key
    remove_column :users, :faculty_key
    remove_column :users, :student_key
    remove_column :users, :try_key
    add_column :users, :keys, :text, array:true, default: []
    add_column :offerings, :passcode, :text
  end
end
