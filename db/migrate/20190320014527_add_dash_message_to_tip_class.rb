class AddDashMessageToTipClass < ActiveRecord::Migration[5.2]
  def change
    add_column :offerings, :message, :text
  end
end
