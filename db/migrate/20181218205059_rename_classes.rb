class RenameClasses < ActiveRecord::Migration[5.2]
  def change
    rename_table :classes, :offerings
  end
end
