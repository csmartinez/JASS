class EnrollmentsController < ApplicationController
	def new
		@enrollment = Enrollment.new
		render :new
	end

	def create
		@enrollment = Enrollment.new(enrollment_params)
		@offering = Offering.find(@enrollment.offering_id)

		if @enrollment.save && @enrollment.key_entrance(@enrollment.passcode, @offering.passcode)
			flash[:notice] = "Successfully Enrolled"
			redirect_to :controller => 'offerings', :action => 'index'
		else
			flash[:notice] = "Passcode is invalid or you are already enrolled in class. Please refresh the page and try again."
			render :new
		end
	end

	def update
		redirect_to :controller => 'offerings', :action => 'index'
	end

	private
  def enrollment_params
    params.require(:enrollment).permit(:role, :passcode, :offering_id, :user_id)
  end
end
