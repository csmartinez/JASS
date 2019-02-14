class Exercise < ApplicationRecord
	has_many :scenarios
	belongs_to :offering, optional: true
end
