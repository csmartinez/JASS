class Offering < ApplicationRecord
	has_many :enrollments
	has_many :users, through: :enrollments, dependent: :destroy

	has_many :offeringexercises
	has_many :exercises, through: :offeringexercises, dependent: :destroy

	has_many :classroomofferings
	has_many :classrooms, through: :classroomofferings, dependent: :destroy

	validates :name, :presence => true
	validates :passcode, :presence => true
end
