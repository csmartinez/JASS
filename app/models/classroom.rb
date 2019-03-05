class Classroom < ApplicationRecord
	has_many :classprofiles
	has_many :profiles, through: :classprofiles
	has_many :classroomofferings
	has_many :offerings, through: :classroomofferings

	
end
