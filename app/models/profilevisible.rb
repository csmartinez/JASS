class Profilevisible < ApplicationRecord
	belongs_to :classroomoffering
	belongs_to :user
	belongs_to :profile

	validates_uniqueness_of :user_id, scope: %i[profile_id classroomoffering_id]
end
