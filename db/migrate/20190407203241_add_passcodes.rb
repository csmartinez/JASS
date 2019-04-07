class AddPasscodes < ActiveRecord::Migration[5.2]
  def change
    add_column :enrollments, :passcode, :text
  end
end
