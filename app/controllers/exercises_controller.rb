class ExercisesController < ApplicationController
	def index

	end

	def show
		@exercises = Exercise.all
	end
end
