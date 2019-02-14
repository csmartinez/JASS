class AddUserEnrollment < ActiveRecord::Migration[5.2]
  def change
    create_table :user_enrollment, id: false do |t|
      t.belongs_to :user, index: true
      t.belongs_to :enrollment, index: true
    end
  end
end
