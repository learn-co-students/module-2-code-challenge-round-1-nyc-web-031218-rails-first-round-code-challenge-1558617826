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
      flash.now[:notice] = "Heroine Successfully Created"
      redirect_to heroine_path(@heroine)
    else
      @powers = Power.all
      flash.now[:notice] = "Heroine Unsuccessfully Created"
      render :new
    end
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  def edit
    @heroine = Heroine.find(params[:id])
    @powers = Power.all
  end

  def update
    @heroine = Heroine.find(params[:id])
    if @heroine.update(heroine_params)
      flash.now[:notice] = "Heroine Successfully Created"
      redirect_to heroine_path(@heroine)
    else
      @powers = Power.all
      flash.now[:notice] = "Heroine Unsuccessfully Updated"
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
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end
end
