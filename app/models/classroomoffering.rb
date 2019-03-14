class Classroomoffering < ApplicationRecord
	belongs_to :classroom
	belongs_to :offering
	has_many :profilevisibles



end
