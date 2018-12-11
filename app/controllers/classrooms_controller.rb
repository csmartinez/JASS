class ClassroomsController < ApplicationController
  def index
    @classrooms = Classroom.all
    @profiles = Profile.all
  end

  def show
    @classroom = Classroom.find(params[:id])
    render :show
    @profiles = Profile.all
  end
end
