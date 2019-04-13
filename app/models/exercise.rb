class Exercise < ApplicationRecord
	has_many :offeringexercises
	has_many :offerings, through: :offeringexercises, dependent: :destroy

	has_many :exercisescenarios
	has_many :scenarios, through: :exercisescenarios, dependent: :destroy

end
