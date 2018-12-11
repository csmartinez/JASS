class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :ethnicity
      t.string :iep
      t.string :background
      t.string :math
      t.string :ela
    end
  end
end
