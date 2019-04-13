class OfferingsController < ApplicationController
	def index
	end

	def new
    @offering = Offering.new
		@exercises = Exercise.all
    @users = User.all
		@classrooms = Classroom.all
    render :new
  end

  def create
		@exercises = Exercise.all
		@users = User.all
		@classrooms = Classroom.all
    @offering = Offering.new(offering_params)
		@enrollments = Enrollment.all
    if @offering.save
			flash[:notice] = "NAU Class Successfully Created"
			Enrollment.create(user_id: current_user.id, offering_id: @offering.id, role: 'instructor')
      render 'offerings/index'
    else
			flash[:notice] = "There was an error creating your NAU Class"
      render :new
    end
  end

	def manage
		@enrollments = Enrollment.all
    @offerings = Offering.all
  end

	def show
    @offering = Offering.find(params[:id])
    render :show
  end

	def edit
    @offering = Offering.find(params[:id])
    render :edit
  end

	def editExercises
		@offering = Offering.find(params[:id])
		@exercises = Exercise.all
	end

	def editEnrollment
		@offering = Offering.find(params[:id])
		@users = User.all
	end

	def editClassrooms
		@offering = Offering.find(params[:id])
		@classrooms = Classroom.all
	end

  def update
    @offering = Offering.find(params[:id])
    if @offering.update_attributes(offering_params)
      #successful
    else
      #unsuccessful
    end
    redirect_to @offering
  end

	def destroy
    @offering = Offering.find(params[:id])
    @offering.destroy
    redirect_to offerings_path
  end

	def visibility
		@offering = Offering.find(params[:id])
	end

	private

	  def offering_params
	    params.require(:offering).permit(:id, :name, :passcode, :description, :message, {  user_ids: [] }, {  exercise_ids: [] }, {  classroom_ids: [] })
	  end
	end
