class ClassroomsController < ApplicationController
  def index
    @classrooms = Classroom.all
    @students = Student.all
  end
end
