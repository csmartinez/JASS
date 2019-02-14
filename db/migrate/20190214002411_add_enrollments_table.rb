class AddEnrollmentsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :enrollments do |t|
      t.string :role
      t.belongs_to :offering, index: true
    end
  end
end
