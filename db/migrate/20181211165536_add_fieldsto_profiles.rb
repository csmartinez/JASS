class AddFieldstoProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :name, :string
    add_column :profiles, :ethnicity, :string
    add_column :profiles, :iep, :string
    add_column :profiles, :background, :string
    add_column :profiles, :math, :string
    add_column :profiles, :ela, :string
  end
end
