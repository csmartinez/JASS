class EliminateSuperior < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :superior
  end
end
