class AddTryKey < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :try_key, :string
  end
end
