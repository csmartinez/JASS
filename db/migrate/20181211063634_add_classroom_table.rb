class AddClassroomTable < ActiveRecord::Migration[5.2]
  def change
    create_table :classrooms do |t|
      t.string :name
      t.text :description
    end
  end
end
