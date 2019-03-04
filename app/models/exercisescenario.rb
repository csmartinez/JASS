class Exercisescenario < ApplicationRecord
	belongs_to :scenario
	belongs_to :exercise

	def self.search_by(search_term)
		where("LOWER(name) LIKE :search_term", search_term: "%#{search_term.downcase}%")
	end
end
