class Offering < ApplicationRecord
	has_many :enrollments
	has_many :users, through: :enrollments

	has_many :offeringexercises
	has_many :exercises, through: :offeringexercises

	has_many :classroomofferings
	has_many :classrooms, through: :classroomofferings

	validates :name, :presence => true
	validates :passcode, :presence => true
end
