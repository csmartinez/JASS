class Exercise < ApplicationRecord
	has_many :scenarios
	belongs_to :offering, optional: true

	#validates_presence_of :title, :body

	mount_uploader :thumb_image, ExcerciesUploader
	mount_uploader :main_image, ExcerciesUploader

	

end
