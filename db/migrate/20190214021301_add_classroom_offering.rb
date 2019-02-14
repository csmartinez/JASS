class AddClassroomOffering < ActiveRecord::Migration[5.2]
  def change
    create_table :classroom_offering, id: false do |t|
      t.belongs_to :classroom, index: true
      t.belongs_to :offering, index: true
    end
  end
end
