class ChangeProfilesUsersTableName < ActiveRecord::Migration[5.2]
  def change
    rename_table :classrooms_profiles, :classprofiles
  end
end
