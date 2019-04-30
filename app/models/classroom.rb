class Classroom < ApplicationRecord
	has_many :classprofiles
	has_many :profiles, through: :classprofiles, dependent: :destroy
	has_many :classroomofferings
	has_many :offerings, through: :classroomofferings, dependent: :destroy

	def self.search(search)
		
	if search

		where(["lower(name) LIKE ? OR upper(name) LIKE ? OR name LIKE ?" ,
			"%#{search}%","%#{search}%","%#{search}%"])
		end
end
end
