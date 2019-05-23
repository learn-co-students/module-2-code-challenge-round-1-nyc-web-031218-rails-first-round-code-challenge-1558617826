class HeroinesController < ApplicationController

  def index
    @heroines = Heroine.all
    # if Power.powers_list.include?(@filter)
    #   @heroines.select do |h|
    #     h.power == @filter
    #   end
    # else
    #   @heroines
    # end
  end

  def new
    @heroine = Heroine.new
    @powers = Power.all
    #byebug
  end

  def create
    @heroine = Heroine.new(heroine_params)
    if @heroine.valid?
      @heroine.save
      redirect_to heroine_path(@heroine)
    else
      render :new
    end
  end

  def edit
    @heroine = Heroine.find(params[:id])
  end

  def update
    @heroine = Heroine.find(params[:id])
    if @heroine.update(heroine_params)
      redirect_to heroine_path
    else
      render :edit
    end
  end

  def delete
    @heroine = Heroine.find(params[:id])
    @heroine.destroy
    redirect_to heroines_path
  end

  def show
    @heroine = Heroine.find(params[:id])
    @power = @heroine.power
  end

  # def search
  #   @heroines = Heroine.all
  #   @filter = params[:q]
  #   render :index
  # end

  private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end
end
