class AddToHideProfilesTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :profilevisibles, :complete
    add_column :profiles, :gradelevel, :integer
    add_column :profilevisibles, :lname, :boolean
    add_column :profilevisibles, :gradelevel, :boolean
    add_column :profilevisibles, :ethnicity, :boolean
    add_column :profilevisibles, :iep, :boolean
    add_column :profilevisibles, :background, :boolean
    add_column :profilevisibles, :math, :boolean
    add_column :profilevisibles, :ela, :boolean
  end
end
