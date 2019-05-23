class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def new
    @power = Power.new
  end

  def create
    @power = Power.new(power_params)

    if @power.save
      redirect_to @power
    else
      flash[:notice] = @power.errors.full_messages
      redirect_to new_power_path
    end
  end

  def edit
    @power = Power.find(params[:id])
  end

  def update
    @power = Power.find(params[:id])

    if @power.update(power_params)
      redirect_to @power
    else
      flash[:notice] = @power.errors.full_messages
      redirect_to edit_power_path
    end
  end

  def show
    @power = Power.find(params[:id])
  end

  def destroy
    Power.find(params[:id]).destroy
    redirect_to powers_path
  end

  private

  def power_params
    params.require(:power).permit(:name, :description)
  end
end
