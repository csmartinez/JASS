class Classroom < ApplicationRecord
	has_many :offerings
	has_many :users, through: :offerings
	has_many :classprofiles
	has_many :profiles, through: :classprofiles
end
