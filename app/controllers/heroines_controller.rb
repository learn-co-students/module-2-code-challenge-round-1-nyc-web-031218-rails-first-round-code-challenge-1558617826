class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def new
  end

  def create
  end

  def edit
    @heroine = Heroine.find(params[:id])
  end

  def update
    @heroine = Heroine.find(params[:id])
  end

  def show
    @heroine = Heroine.find(params[:id])
    @power = @heroine.power
  end

  def delete
    @heroine = Heroine.find(params[:id])
  end

  private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name)
  end
end
