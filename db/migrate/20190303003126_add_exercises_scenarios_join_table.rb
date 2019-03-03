class AddExercisesScenariosJoinTable < ActiveRecord::Migration[5.2]
  def change
    rename_table :offering_exercise, :offeringexercises
    create_table :exercisecenarios, id: false do |t|
      t.belongs_to :scenario, index: true
      t.belongs_to :exercise, index: true
    end
    remove_column :scenarios, :exercise_id
  end
end
