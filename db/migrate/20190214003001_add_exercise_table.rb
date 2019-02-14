class AddExerciseTable < ActiveRecord::Migration[5.2]
  def change
    create_table :exercises do |t|
      t.string :name
      t.text :description
      t.belongs_to :offering, index: true
    end
  end
end
