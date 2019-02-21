class AddBackgroundToProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :background, :text
  end
end
