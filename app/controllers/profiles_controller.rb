class ProfilesController < ApplicationController
	def new
		@profile = Profile.new
		render :new
	end

	def create
		@profile = Profile.new(profile_params)
		if @profile.save
			render :new
		else
			render :new
		end
	end
private
	def profile_params
    params.require(:profile).permit(:id, :fname, :lname, :ethnicity, :ela, :math, :iep)
  end
end
