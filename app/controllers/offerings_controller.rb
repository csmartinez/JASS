class OfferingsController < ApplicationController
	def new
		@classrooms = Classroom.all
    @users = User.all
		@offering = Offering.new
		render :new
	end

	def create
		@offering = Offering.new(offering_params)
		if @offering.save
			render :new
		else
			render :new
		end
	end

private
	def offering_params
    params.require(:offering).permit(:id, :classroom_id, :user_id)
  end
end
