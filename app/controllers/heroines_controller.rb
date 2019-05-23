class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def edit
    @heroine = Heroine.find(params[:id])

  end

  def update
    @heroine = Heroine.find(params[:id])
    @heroine = Heroine.update(helper_params)
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroin = Heroine.create(helper_params)
    redirect_to "/heroines/#{@heroine}"
  end

  def helper_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end

  def show
    @heroine = Heroine.find(params[:id])
    @power = Power.find(@heroine.power_id)
  end
end
