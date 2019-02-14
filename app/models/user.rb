class User < ApplicationRecord
  has_many :userenrollments
	has_many :enrollments, through: :userenrollments

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
