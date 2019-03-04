class ExercisesController < ApplicationController

  def index
    if params[:search]
      @search_term = params[:search]
      @exercises =  @exercises.search_by(@search_term)
    end
  end



	#@exercises = Exercise.where(["name like ?", "%#{params[:search]}"])


  def manage
    @exercises = Exercise.all
  end


  #  if params[:search]
  #    @search_term = params[:search]


  def destroy
    @exercise = Exercise.find(params[:id])
    @exercise.destroy
    redirect_to manage_exercises_url
  end

	def new
    @exercise = Exercise.new
		@scenarios = Scenario.all
    render :new
  end

	def show
    @exercise = Exercise.find(params[:id])
    @scenarios = @exercise.scenarios.all
    render :show
  end

  def create
    @exercise = Exercise.new(exercise_params)
    @scenarios = Scenario.all
    if @exercise.save!
      render :action => :edit
    else
      render :new
    end
  end

	def edit
    @exercise = Exercise.find(params[:id])
    @scenarios = Scenario.all
    render :edit
  end

  def update
    @exercise = Exercise.find(params[:id])
    if @exercise.update_attributes(exercise_params)
      #successful
    else
      #unsuccessful
    end
    redirect_to @exercise
  end

	private
  def exercise_params
    params.require(:exercise).permit(:id, :name, :description, :main_image, :search, {  scenario_ids: [] })
  end
end
