class User < ApplicationRecord
	has_many :enrollments
	has_many :offerings, through: :enrollments

	has_many :progressions
	has_many :scenarios, -> { distinct }, through: :progressions

	#mount_uploader :main_image, ExerciseUploader

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
