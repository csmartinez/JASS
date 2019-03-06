class Exercise < ApplicationRecord
	has_many :offeringexercises
	has_many :offerings, through: :offeringexercises

	has_many :exercisescenarios
	has_many :scenarios, through: :exercisescenarios


end
