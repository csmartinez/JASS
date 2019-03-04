class Exercisescenario < ApplicationRecord
	belongs_to :scenario
	belongs_to :exercise

	def self.search_by(search_term)
		where("LOWER(exercisescenarios) LIKE :search_term", search_term: "%#{search_term.downcase}%")
	end
end
