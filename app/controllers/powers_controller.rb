class PowersController < ApplicationController
  # given extra time to be able to create and update powers as well
  
  def index
    @powers = Power.all
  end

  def new
    @power = Power.new
  end

  def create
    @power = Power.new(power_params)
    if @power.valid?
      @power.save
      flash.now[:notice] = "Power Successfully Created"
      redirect_to power_path(@power)
    else
      flash.now[:notice] = "Power Unsuccessfully Created"
      render :new
    end
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
      flash.now[:notice] = "Power Successfully Created"
      redirect_to power_path(@power)
    else
      flash.now[:notice] = "Power Unsuccessfully Updated"
      render :edit
    end
  end

  def destroy
    @power = Power.find(params[:id])
    @power.destroy
    redirect_to powers_path
  end

  private
  def power_params
    params.require(:power).permit(:name, :description)
  end
end
