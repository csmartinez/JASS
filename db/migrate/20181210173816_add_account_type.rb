class AddAccountType < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :acc_type, :string
  end
end
