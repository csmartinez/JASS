class RenameJoinTableAgain < ActiveRecord::Migration[5.2]
  def change
    rename_table :profiles_classrooms, :classrooms_profiles
  end
end
