class ProfilevisiblesController < ApplicationController

  def edit
    if Profilevisible.exists?(params[:id])
      @profilevisible = Profilevisible.find(params[:id])
      @user = User.find(@profilevisible.user_id)
      @classroomoffering = Classroomoffering.find(@profilevisible.classroomoffering_id)
      @classroom = Classroom.find(@classroomoffering.classroom_id)
      @profile = Profile.find(@profilevisible.profile_id)
    else
      redirect_to home_index_path
    end
  end

  def show
    @offering = Offering.find(params[:id])
  end

  def new
    @profilevisible = Profilevisible.new
    offering_id = request.original_url.scan( /\d+$/ ).first.to_i
    @offering = Offering.find(offering_id)
  end

  def create
		@profilevisible = Profilevisible.new(profilevisible_params)
    @profilevisible.errors.full_messages
    @classroomoffering = Classroomoffering.find(@profilevisible.classroomoffering_id)
    @offering = Offering.find(@classroomoffering.offering_id)

		if @profilevisible.save
      flash[:notice] = "Visibility Successfully Updated"
      redirect_to new_profilevisible_path(@offering)
		else
      flash[:notice] = @profilevisible.errors.full_messages
      redirect_to new_profilevisible_path(@offering)
		end
  end

  def update
    @profilevisible = Profilevisible.find(params[:id])
    @classroomoffering = Classroomoffering.find(@profilevisible.classroomoffering_id)
    @offering = Offering.find(@classroomoffering.offering_id)

    if @profilevisible.update_attributes(profilevisible_params)
      redirect_to profilevisible_path(@offering)
    else
      redirect_to profilevisible_path(@offering)
    end
  end

  def destroy
    @profilevisible = Profilevisible.find(params[:id])
    @classroomoffering = Classroomoffering.find(@profilevisible.classroomoffering_id)
    @offering = Offering.find(@classroomoffering.offering_id)

    @profilevisible.destroy
    redirect_to profilevisible_path(@offering)
  end

  private
  	def profilevisible_params
      params.require(:profilevisible).permit(:id, :user_id, :profile_id, :classroomoffering_id, :lname, :gradelevel, :ethnicity, :iep, :background, :math, :ela)
    end
end
