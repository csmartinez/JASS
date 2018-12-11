class RenameJoinTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :profiles_students
    create_table :profiles_classrooms, id: false do |t|
      t.belongs_to :profile, index: true
      t.belongs_to :classroom, index: true
    end
  end
end
