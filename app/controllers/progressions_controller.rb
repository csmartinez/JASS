class ProgressionsController < ApplicationController
  def user_progress
    @user = User.find(params[:id])
    @progression = Progression.new
		render :user_progress
  end

  def new
    @progression = Progression.new
  end

  def update
    @progression = Progression.find(params[:id])
    if @progression.update_attributes(progression_params)
      #successful
    else
      #unsuccessful
    end
    render 'exercises/index'
  end

  def create
		@progression = Progression.new(progression_params)
		if @progression.save
      render 'exercises/index'
		else
      render 'exercises/index'
		end
  end

private
	def progression_params
    params.require(:progression).permit(:id, :user_id, :scenario_id, :complete)
  end
end
