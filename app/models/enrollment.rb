class Enrollment < ApplicationRecord
	belongs_to :user
	belongs_to :offering

	validates_uniqueness_of :user_id, scope: %i[user_id offering_id]

	def key_entrance(enroll_pass, offering_pass)
		if enroll_pass == offering_pass
			return true
		else
			return false
		end
	end
end
