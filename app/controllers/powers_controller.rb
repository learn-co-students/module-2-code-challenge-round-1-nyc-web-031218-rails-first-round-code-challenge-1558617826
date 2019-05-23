class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def new
  end

  def create
  end

  def edit
    @power = Power.find(params[:id])
  end

  def update
    @power = Power.find(params[:id])
  end

  def show
    @power = Power.find(params[:id])
  end

  def delete
    @power = Power.find(params[:id])
  end

  private

  def power_params
    params.require(:power).permit(:name, :description)
  end
end
