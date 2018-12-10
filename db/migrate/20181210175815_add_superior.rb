class AddSuperior < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :superior, :integer
  end
end
