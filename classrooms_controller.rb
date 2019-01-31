class ClassroomsController < ApplicationController
  helper_method :sort_column, :sort_direction

  def index
    @classrooms = Classroom.all
    @profiles = Profile.all
  end

  def virtual
  end

  def show
    @classroom = Classroom.find(params[:id])
    @profiles = @classroom.profiles.order("#{sort_column} #{sort_direction}")
    render :show
  end

  def new
    @classroom = Classroom.new
    render :new
  end

  def create
    @classroom = Classroom.new(classroom_params)
    if @classroom.save
      Offering.create(user_id: current_user.id, classroom_id: @classroom.id)
      render :action => :edit
    else
      render :new
    end
  end

  def edit
    @classroom = Classroom.find(params[:id])
    @profiles = Profile.all
    render :edit
  end

  def update
    @classroom = Classroom.find(params[:id])
    if @classroom.update_attributes(classroom_params)
      #successful
    else
      #unsuccessful
    end
    redirect_to @classroom
  end

private
  def sortable_columns
    ["fname", "lname", "ethnicity", "iep", "math", "ela"]
  end

  def sort_column
    sortable_columns.include?(params[:column]) ? params[:column] : "fname"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end

  def classroom_params
    params.require(:classroom).permit(:id, :name, :description, {  profile_ids: [] })
  end
end
