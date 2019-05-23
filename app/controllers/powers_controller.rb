class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def show
  	@power = Power.find(params[:id])
  end

  def new
  	@power = Power.new
  end

  def create
  	@power = Power.new(power_params)
  	if @power.valid?
  		@power.save
      redirect_to power_path(@power)
  	else
  		flash[:notice] = "Unsuccessful"
  		redirect_to new_power_path
  	end
  end

  def edit
  	@power = Power.find(params[:id])

  end

  def update
  	@power = Power.find(params[:id])
  	if @power.update(power_params)
  		redirect_to power_path(@power)
  	else
  		flash[:notice] = "Unsuccessful"
  		redirect_to edit_power_path
  	end
  end

  def destroy
    @power = Power.find(params[:id])
    @power.delete
    redirect_to powers_path
  end

  private

  def power_params
  	params.require(:power).permit(:name, :description)
  end
end