class AddOfferingsExercisesJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_table :offering_exercise, id: false do |t|
      t.belongs_to :offering, index: true
      t.belongs_to :exercise, index: true
      t.text :notes_to_TIP_class
    end
    remove_column :exercises, :offering_id
  end
end
