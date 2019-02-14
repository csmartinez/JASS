class AddOfferingCopy < ActiveRecord::Migration[5.2]
  def change
    add_column :offerings, :description, :text
  end
end
