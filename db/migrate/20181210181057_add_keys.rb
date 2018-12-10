class AddKeys < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :admin_key, :string
    add_column :users, :faculty_key, :string
    add_column :users, :student_key, :string
  end
end
