class EditOfferingsTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :offerings, :user_id
    remove_column :offerings, :classroom_id
  end
end
