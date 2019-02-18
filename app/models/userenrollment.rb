class Userenrollment < ApplicationRecord
	belongs_to :user
	belongs_to :enrollment
end
