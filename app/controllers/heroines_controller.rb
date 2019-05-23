class HeroinesController < ApplicationController
  before_action :set_heroine, only: %i[show edit update destroy]
  before_action :grab_all_powers, only: %i[new create edit update]

  def index
    @heroines = Heroine.all
  end

  def show; end

  def search
    @power = Power.find_by_name(params[:search_power])
    if @power.nil?
      flash.now[:notice] = 'Power Not Found'
      @heroines = Heroine.all
      render :index
    else
      @heroines = Heroine.where(power_id: @power.id)
    end
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
      flash[:notice] = @heroine.errors.full_messages
      render :new
    end
  end

  def edit; end

  def update
    if @heroine.valid?
      @heroine.update(heroine_params)
      redirect_to(@heroine)
    else
      flash[:notice] = @heroine.errors.full_messages
      render :edit
    end
  end

  def destroy
    @heroine.destroy
    redirect_to heroines_path
  end

  private

  def set_heroine
    @heroine = Heroine.find(params[:id])
  end

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end

  def grab_all_powers
    @powers = Power.all
  end

end
