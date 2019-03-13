class AddPKtoclassroomofferings < ActiveRecord::Migration[5.2]
  def change
    add_column :classroomofferings, :id, :primary_key
  end
end
