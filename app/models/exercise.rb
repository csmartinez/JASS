class Exercise < ApplicationRecord
	has_many :scenarios
	belongs_to :offering, optional: true

	#validates_presence_of :title, :body

end
