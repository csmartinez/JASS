class Exercise < ApplicationRecord
	has_many :offeringexercises
	has_many :offerings, through: :offeringexercises

	has_many :exercisescenarios
	has_many :scenarios, through: :exercisescenarios

	def self.search(search)
		#where("LOWER(exercisescenarios) LIKE :search_term", search_term: "%#{search_term.downcase}%")
		if search
			exercise = Exercise.find_by(name: search)
			if exercise
				self.where(scenario_ids: exercise)
			else
				Exercise.all
			end
		else
			Exercise.all
		end
	end
end
