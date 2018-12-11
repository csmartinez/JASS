class AddStudentTable < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :fname
      t.string :lname
      t.integer :age
      t.integer :gradelevel
    end
  end
end
