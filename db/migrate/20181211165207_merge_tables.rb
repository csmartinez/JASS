class MergeTables < ActiveRecord::Migration[5.2]
  def change
    drop_table :profiles
    rename_table :students, :profiles
  end
end
