class ClassroomsController < ApplicationController
  helper_method :sort_column, :sort_direction

  def index
    @classrooms = Classroom.all
    @profiles = Profile.all
    @enrollments = Enrollment.all
    @offerings = Offering.all
    @users = User.all
  end

  def virtual
  end

  def show
    @classroom = Classroom.find(params[:id])
    @classroomofferings = Classroomoffering.all
    @profiles = @classroom.profiles.order("#{sort_column} #{sort_direction}")
    @profilevisibles = Profilevisible.all
    render :show
  end

  def manage
    if @classrooms = Classroom.search(params[:search])
   else
    @classrooms = Classroom.all
  end
end

  def all
    if @classrooms = Classroom.search(params[:search])
   else
    @classrooms = Classroom.all
  end
  end

  def new
    @classroom = Classroom.new
    render :new
  end

  def create
    @classroom = Classroom.new(classroom_params)
    @profiles = Profile.all
    @classroomofferings = Classroomoffering.all
    # @classroomofferings = Classroomoffering.all
    if @classroom.save
      # Classroomoffering.create(user_id: current_user.id, classroom_id: @classroom.id)
      render :action => :edit
    else
      render :new
    end
  end

  def edit
    @classroom = Classroom.find(params[:id])

    if @profiles = Profile.search(params[:search])
    else
      @profiles = Profile.order("#{sort_column} #{sort_direction}")
    end

    @classroomofferings = Classroomoffering.all
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

  def destroy
    @classroom = Classroom.find(params[:id])
    @classroom.destroy

    redirect_to classrooms_path
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
    params.require(:classroom).permit(:id, :name, :description, :user_id, {  profile_ids: [] })
  end
end
