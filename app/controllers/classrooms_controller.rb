class ClassroomsController < ApplicationController
  helper_method :sort_column, :sort_direction
  
  def index
    @classrooms = Classroom.order("#{sort_column} #{sort_direction}")
    @profiles = Profile.all
  end

  def show
    @classroom = Classroom.find(params[:id])
    render :show
    @profiles = Profile.all
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
end
