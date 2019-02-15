class AddPKtoOfferings < ActiveRecord::Migration[5.2]
  def change
    add_column :offerings, :id, :primary_key
  end
end
