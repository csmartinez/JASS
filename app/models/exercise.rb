class Exercise < ApplicationRecord
	has_many :scenarios
	belongs_to :offering
end
