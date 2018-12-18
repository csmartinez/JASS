class Classroom < ApplicationRecord
	has_many :offerings
	has_many :users, through: :offerings
	has_and_belongs_to_many :profiles
end
