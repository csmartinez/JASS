class Profile < ApplicationRecord
	has_many :classprofiles
	has_many :classrooms, through: :classprofiles
	has_many :profilevisibles
	#resources :profiles

	#validates_uniqueness_of :name

	def self.search(search)
		if search
			where(["lower(fname) LIKE ? OR lower(lname) LIKE ? OR lower(ethnicity) LIKE ? OR lower(iep) LIKE ? OR lower(math) LIKE ? OR lower(ela) LIKE ? OR lower(background) LIKE ?

				OR (fname) LIKE ? OR (lname) LIKE ? OR (ethnicity) LIKE ? OR (iep) LIKE ? OR (math) LIKE ? OR (ela) LIKE ? or (background) LIKE ?

				OR upper(fname) LIKE ? OR upper(lname) LIKE ? OR upper(ethnicity) LIKE ? OR upper(iep) LIKE ? OR upper(math) LIKE ? OR upper(ela) LIKE ? or upper(background) LIKE ?" ,
				"%#{search}%", 	"%#{search}%", 	"%#{search}%", 	"%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%",
				"%#{search}%",  "%#{search}%", 	"%#{search}%", 	"%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", 
				"%#{search}%",  "%#{search}%", 	"%#{search}%", 	"%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%" ])
	end
end

end
