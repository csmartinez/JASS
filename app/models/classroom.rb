class Classroom < ApplicationRecord
	has_many :classprofiles
	has_many :profiles, through: :classprofiles, dependent: :destroy
	has_many :classroomofferings
	has_many :offerings, through: :classroomofferings, dependent: :destroy
end
