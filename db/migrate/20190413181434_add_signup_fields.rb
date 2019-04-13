class AddSignupFields < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :superior, :integer
    add_column :users, :admin_key, :string
    add_column :users, :faculty_key, :string
  end
end
