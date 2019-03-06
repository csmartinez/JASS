class Profile < ApplicationRecord
	has_many :classprofiles
	has_many :classrooms, through: :classprofiles
	#resources :profiles

	#validates_uniqueness_of :name

	def self.search(search)
		if search
			where(["lower(fname) LIKE ?", "%#{search}%"])
	end
end

end
