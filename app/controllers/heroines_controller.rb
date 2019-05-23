class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
    @filter_power = Power.new
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.new(heroine_params)

    if @heroine.save
      redirect_to @heroine
    else
      flash[:notice] = @heroine.errors.full_messages[0]
      redirect_to new_heroine_path
    end
  end

  def edit
    @heroine = Heroine.find(params[:id])
  end

  def update
    @heroine = Heroine.find(params[:id])

    if @heroine.update(heroine_params)
      redirect_to @heroine
    else
      flash[:notice] = @heroine.errors.full_messages[0]
      redirect_to edit_heroine_path
    end
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  def destroy
    Heroine.find(params[:id]).destroy
    redirect_to heroines_path
  end

  def filter
    # byebug
    @power = Power.find(params[:power][:id])
    @heroines = Heroine.all.select { |heroine| heroine.power == @power }
    # byebug
  end

  private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end
end
