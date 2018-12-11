class ClassroomsController < ApplicationController
  def index
    @classrooms = Classroom.all
    @students = Student.all
  end

  def show
    @classroom = Classroom.find(params[:id])
    render :show
  end
end
