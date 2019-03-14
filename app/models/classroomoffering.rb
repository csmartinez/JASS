class Classroomoffering < ApplicationRecord
	belongs_to :classroom
	belongs_to :offering
	has_many :profilevisibles

	def self.search(search)
		if search
			where(["lower(fname) LIKE ? OR lower(lname) LIKE ? OR lower(ethnicity) LIKE ? OR lower(iep) LIKE ?
				OR lower(math) LIKE ? OR lower(ela) LIKE ? OR (fname) LIKE ? OR (lname) LIKE ?
				OR (ethnicity) LIKE ? OR (iep) LIKE ? OR (math) LIKE ? OR (ela) LIKE ?" ,
				"%#{search}%", 	"%#{search}%", 	"%#{search}%", 	"%#{search}%", "%#{search}%", "%#{search}%",
				"%#{search}%",  "%#{search}%", 	"%#{search}%", 	"%#{search}%", "%#{search}%", "%#{search}%"])
			end
		end



end
