class AddSignUpKey < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :signup_key, :string
  end
end
