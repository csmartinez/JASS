class AddProgressJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_table :progress, id: false do |t|
      t.belongs_to :user, index: true
      t.belongs_to :scenario, index: true
      t.boolean :complete
    end
  end
end
