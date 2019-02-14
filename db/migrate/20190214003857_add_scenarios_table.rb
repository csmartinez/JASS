class AddScenariosTable < ActiveRecord::Migration[5.2]
  def change
    create_table :scenarios do |t|
      t.string :name
      t.text :description
      t.text :link
      t.belongs_to :exercise, index: true
    end
  end
end
