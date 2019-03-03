class RenameProgress < ActiveRecord::Migration[5.2]
  def change
    rename_table :progress, :progressions
  end
end
