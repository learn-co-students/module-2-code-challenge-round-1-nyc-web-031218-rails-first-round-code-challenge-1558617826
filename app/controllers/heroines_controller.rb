class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def new
    @heroine = Heroine.new
    @powers = Power.all
  end

  def create
    @heroine = Heroine.new(heroine_params)
    if @heroine.valid?
      @heroine.save
      byebug
      redirect_to :heroine_path
    else
      render :new
    end
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
