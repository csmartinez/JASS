class Profile < ApplicationRecord
	has_many :classprofiles
	has_many :classrooms, through: :classprofiles

end
