class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def new
    @power = Power.new
  end

  def show
    @power = Power.find(params[:id])
  end

  def edit
    @power = Power.find(params[:id])
  end

  def update
    @power = Power.find(params[:id])
    if @power.update(power_params)
      redirect_to power_path(@power)
    else
      render :edit
    end
  end

  def destroy
    @power = Power.find(params[:id])
  end

  private

  def power_params
    params.require(:power).permit(:name, :description, :heroine_id)
  end


end
