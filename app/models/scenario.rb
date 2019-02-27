class Scenario < ApplicationRecord
	belongs_to :exercise, optional: true

	mount_uploader :pdf_file, ScenarioUploader
end
