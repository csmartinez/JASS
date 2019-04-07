 class ScenariosController < ApplicationController

   def manage
     @scenarios = Scenario.all
   end

   def destroy
     @scenario = Scenario.find(params[:id])
     @scenario.destroy
     redirect_to manage_scenarios_url
   end

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

  def edit
    @scenario = Scenario.find(params[:id])
    @scenarios = Scenario.all
    render :edit
  end

  def update
    @scenario = Scenario.find(params[:id])
    if @scenario.update_attributes(scenario_params)
      #successful
    else
      #unsuccessful
    end
    redirect_to @scenario
  end

	private

	  def scenario_params
	    params.require(:scenario).permit(:id, :name, :description, :pdf_file)
	  end
	end
