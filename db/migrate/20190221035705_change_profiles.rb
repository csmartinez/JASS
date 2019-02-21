class ChangeProfiles < ActiveRecord::Migration[5.2]
  def change
    remove_column :profiles, :age
    remove_column :profiles, :gradelevel
    remove_column :profiles, :name
    remove_column :profiles, :background
  end
end
