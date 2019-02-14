class RenameClassroomOfferings < ActiveRecord::Migration[5.2]
  def change
    rename_table :classroom_offering, :classroomofferings
    rename_table :user_enrollment, :userenrollment
  end
end
