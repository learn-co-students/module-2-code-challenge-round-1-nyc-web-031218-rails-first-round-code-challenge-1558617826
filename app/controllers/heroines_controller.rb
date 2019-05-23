class HeroinesController < ApplicationController
  before_action :set_heroine, only: %i[show edit update destroy]
  before_action :grab_all_powers, only: %i[new create edit update]

  def index
    @heroines = Heroine.all
  end

  def show; end

  def search
    @power = Power.find_by_name(params[:search_power])
    unless @power.nil?
      @heroines = Heroine.where(power_id: @power.id)
    else
      flash.now[:notice] = 'Power Not Found'
      @heroines = Heroine.all
      render :index
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
