class ScenariosController < ApplicationController
	def new
    @scenario = Scenario.new
    render :new
  end

  def create
    @scenario = Scenario.new(scenario_params)

		if @scenario.save
			render 'exercises/index'
		else
			render :new
		end
  end

	private

	  def scenario_params
	    params.require(:scenario).permit(:id, :name, :description, :link, :pdf_file)
	  end
	end
