class ClassroomController < ApplicationController
  def index
    @classrooms = Classroom.all
  end
end
