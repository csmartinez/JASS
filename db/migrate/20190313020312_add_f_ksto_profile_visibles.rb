class AddFKstoProfileVisibles < ActiveRecord::Migration[5.2]
  def change
    add_reference :profilevisibles, :user, foreign_key: true
    add_reference :profilevisibles, :profile, foreign_key: true
  end
end
