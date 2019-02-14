class Scenario < ApplicationRecord
	belongs_to :exercise, optional: true
end
