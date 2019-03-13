class ProfilevisiblesController < ApplicationController
  def new
    @profilevisible = Profilevisible.new
    offering_id = request.original_url.scan( /\d+$/ ).first.to_i
    @offering = Offering.find(offering_id)
  end

  def create
		@profilevisible = Profilevisible.new(profilevisible_params)
    @profilevisible.errors.full_messages
		if @profilevisible.save
      render 'offerings/index'
		else
      @profilevisible.errors.full_messages
      render 'offerings/index'
		end
  end

  private
  	def profilevisible_params
      params.require(:profilevisible).permit(:id, :user_id, :profile_id, :classroomoffering_id, :lname, :gradelevel, :ethnicity, :iep, :background, :math, :ela)
    end
end
