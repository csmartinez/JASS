class Scenario < ApplicationRecord
	has_many :progressions
	has_many :users, -> { distinct }, through: :progressions

	has_many :exercisecenarios
	has_many :exercises, through: :exercisescenarios

	mount_uploader :pdf_file, ScenarioUploader
end
