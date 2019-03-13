class AddHideProfilesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :profilevisibles, id: false do |t|
      t.belongs_to :classroomoffering, index: true
      t.boolean :complete
      t.boolean :complete
      t.boolean :complete
      t.boolean :complete
    end
  end
end
