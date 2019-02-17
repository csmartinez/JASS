class AddTitletoOfferings < ActiveRecord::Migration[5.2]
  def change
    add_column :offerings, :name, :string
  end
end
