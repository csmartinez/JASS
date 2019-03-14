class ClassprofilesController < ApplicationController
	def new
		@classrooms = Classroom.all
    @profiles = Profile.all
		@classprofile = Classprofile.new
		render :new
	end



	def create
		@classrooms = Classroom.all
    @profiles = Profile.all
		@classprofile = Classprofile.new(classprofile_params)
		if @classprofile.save
			render :new
		else
			render :new
		end
	end

private
	def classprofile_params
    params.require(:classprofile).permit(:id, :classroom_id, :profile_id)
  end
end
