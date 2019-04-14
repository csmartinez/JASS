class AddGradeLeveltoProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :grade, :integer
  end
end
