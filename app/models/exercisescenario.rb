class Exercisescenario < ApplicationRecord
	belongs_to :scenario
	belongs_to :exercise

	def self.search(search)
		#where("LOWER(exercisescenarios) LIKE :search_term", search_term: "%#{search_term.downcase}%")
		if search
			scenario = Scenario.find_by(name: search)
			if scenario
				self.where(scenario_ids: scenario)
			else
				Scenario.all
			end
		else
			Scenario.all
	end
end
