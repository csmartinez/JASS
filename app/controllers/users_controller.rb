class UsersController < ApplicationController

	def show
		@user = User.find(params[:id])
		render :show
	end

	def generate_faculty_key
		current_user.update(:faculty_key => SecureRandom.alphanumeric)
		redirect_to home_index_path
	end

	def generate_admin_key
		current_user.update(:admin_key => SecureRandom.alphanumeric)
		redirect_to home_index_path
	end

end
