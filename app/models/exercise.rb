class Exercise < ApplicationRecord
	has_many :offeringexercises
	has_many :offerings, through: :offeringexercises

	has_many :exercisescenarios
	has_many :scenarios, through: :exercisescenarios

	def self.search(search)
		if search
			exercise = Exercise.find_by(name: search)
		#where("LOWER(name) LIKE :search" , search: "%#{search.downcase}%")
	end

	#validates_presence_of :title, :body

end
end
