class Scenario < ApplicationRecord
	has_many :progressions
	has_many :users, -> { distinct }, through: :progressions, dependent: :destroy

	has_many :exercisecenarios
	has_many :exercises, through: :exercisescenarios, dependent: :destroy

	mount_uploader :pdf_file, ScenarioUploader
end
