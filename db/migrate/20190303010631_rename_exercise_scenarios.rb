class RenameExerciseScenarios < ActiveRecord::Migration[5.2]
  def change
    rename_table :exercisecenarios, :exercisescenarios
  end
end
