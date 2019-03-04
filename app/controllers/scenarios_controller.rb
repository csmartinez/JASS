class ScenariosController < ApplicationController

	def manage
    if params[:search]
      @search_term = params[:search]
      @scenario =  @scenario.search_by(@search_term)
    end
  end

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
	    params.require(:scenario).permit(:id, :name, :description, :pdf_file, :search)
	  end
	end
