class AddProfileAttributes < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :beginning_of_school, :text
    add_column :profiles, :story_1, :text
    add_column :profiles, :story_2, :text
    add_column :profiles, :story_3, :text
    add_column :profiles, :writing_sample, :text
    add_column :profiles, :reading_data, :text
    add_column :profiles, :math_sample, :text
    add_column :profiles, :family_background_PBL, :text
    add_column :profiles, :funds_of_knowledge, :text
    add_column :profiles, :family_survey, :text
    add_column :profiles, :academic_data, :text
  end
end
