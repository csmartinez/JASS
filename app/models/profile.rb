class Profile < ApplicationRecord
	has_many :classprofiles
	has_many :classrooms, through: :classprofiles
	#resources :profiles

	#validates_uniqueness_of :name

	def self.search_by(search_term)
	where("LOWER(fname) LIKE :search_term", search_term: "%#{search_term.downcase}%")
end
end
