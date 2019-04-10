class ProfilevisiblesController < ApplicationController
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

  private
  	def profilevisible_params
      params.require(:profilevisible).permit(:id, :user_id, :profile_id, :classroomoffering_id, :lname, :gradelevel, :ethnicity, :iep, :background, :math, :ela)
    end
end
