class User < ApplicationRecord
	has_many :enrollments
	has_many :offerings, through: :enrollments, dependent: :destroy

	has_many :progressions
	has_many :scenarios, -> { distinct }, through: :progressions, dependent: :destroy

	validates :email, uniqueness: true

	#mount_uploader :main_image, ExerciseUploader

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

	has_many :profilevisibles
end
