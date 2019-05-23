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

  end

  def show
    @heroine = Heroine.find(params[:id])
    @power = Power.find(@heroine.power_id)
  end
end
