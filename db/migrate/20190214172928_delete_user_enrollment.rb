class DeleteUserEnrollment < ActiveRecord::Migration[5.2]
  def change
    drop_table :userenrollment
    drop_table :enrollments
    create_table :enrollments do |t|
      t.string :role
      t.belongs_to :offering, index: true
      t.belongs_to :user, index: true
    end
  end
end
