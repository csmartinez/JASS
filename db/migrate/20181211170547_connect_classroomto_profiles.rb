class ConnectClassroomtoProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles_students, id: false do |t|
      t.belongs_to :profile, index: true
      t.belongs_to :student, index: true
    end
  end
end
