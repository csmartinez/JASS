class Offering < ApplicationRecord
	has_many :enrollments
	has_many :users, through: :enrollments
	has_many :exercises
	has_many :classroomofferings
	has_many :classrooms, through: :classroomofferings
end
