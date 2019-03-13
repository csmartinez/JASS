class Profilevisible < ApplicationRecord
	belongs_to :classroomoffering
	belongs_to :user
	belongs_to :profile
end
