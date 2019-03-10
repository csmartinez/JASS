 class ScenariosController < ApplicationController

	def new
    @scenario = Scenario.new
    render :new
  end

  def create
    @scenario = Scenario.new(scenario_params)

		if @scenario.save
			render :show
		else
			render :new
		end
  end

  def show
    @scenario = Scenario.find(params[:id])
    render :show
  end

	private

	  def scenario_params
	    params.require(:scenario).permit(:id, :name, :description, :pdf_file)
	  end
	end
