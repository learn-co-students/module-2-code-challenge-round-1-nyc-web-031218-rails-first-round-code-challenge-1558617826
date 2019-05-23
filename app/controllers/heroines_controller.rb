class HeroinesController < ApplicationController

  def index
    @heroines = Heroine.all
  end

  def new
    @heroine = Heroine.new
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

  def show
    @heroine = Heroine.find(params[:id])
  end

  # def search
  #   @heroines = Heroine.search_by_power
  #   render :index
  # end

  def edit
    @heroine = Heroine.find(params[:id])
  end

  def update
    @heroine = Heroine.find(params[:id])
    if @heroine.valid?
      @heroine.update(heroine_params)
      redirect_to heroine_path(@heroine)
    else
      render :edit
    end
  end

  def destroy
    @heroine = Heroine.find(params[:id])
    @heroine.destroy
    redirect_to heroines_path
  end

  private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id, :search)
  end

end
