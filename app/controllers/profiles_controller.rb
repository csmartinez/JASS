class ProfilesController < ApplicationController

	helper_method :sort_column, :sort_direction

	def new
		@profile = Profile.new
		render :new
	end

	def all
  	if
			@profiles = Profile.search(params[:search])
		else
			@profiles = Profile.all.order("#{sort_column} #{sort_direction}")
		end
	end

	def edit
    @profile = Profile.find(params[:id])
  end

	def show
		@profile = Profile.find(params[:id])
		render :show

	end

	def update
    @profile = Profile.find(params[:id])
		@profiles = Profile.all.order("#{sort_column} #{sort_direction}")

    if @profile.update_attributes(profile_params)
      #successful
    else
      #unsuccessful
    end
    render :show
  end

	def create
		@profile = Profile.new(profile_params)
		@profiles = Profile.all.order("#{sort_column} #{sort_direction}")


		if @profile.save
			render :all
		else
			render :new
		end


	end
private
	def sortable_columns
		["fname", "lname", "ethnicity", "iep", "math", "ela", "grade"]
	end

	def sort_column
		sortable_columns.include?(params[:column]) ? params[:column] : "fname"
	end

	def sort_direction
		%w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
	end

	def profile_params
    params.require(:profile).permit(:id, :academic_data, :family_survey, :funds_of_knowledge, :family_background_PBL, :math_sample, :writing_sample, :story_3, :story_2, :story_1, :beginning_of_school, :fname, :lname, :ethnicity, :ela, :math, :iep, :background, :grade)
  end
end
