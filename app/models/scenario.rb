class Scenario < ApplicationRecord
	has_many :progressions
	has_many :users, -> { distinct }, through: :progressions, dependent: :destroy

	has_many :exercisescenarios
	has_many :exercises, through: :exercisescenarios, dependent: :destroy

	mount_uploader :pdf_file, ScenarioUploader

	def self.search(search)
	if search

		where(["lower(name) LIKE ? OR upper(name) LIKE ? OR name LIKE ?" ,
			"%#{search}%","%#{search}%","%#{search}%"])
		end
end

end
