class HeroinesController < ApplicationController
  before_action :find_heroine, only: [:show]
  def index
    @heroines = Heroine.all
  end

  def show
    @powers = Power.all
    @heroine_powers = []
    @powers.each do |power|
      if power.id == @heroine.power_id
        @heroine_powers << power
      end
    end
  end

  def new
    @heroine = Heroine.new
    @powers = Power.all
  end

  def create
    @heroine = Heroine.new(heroine_params)
    if @heroine.valid?
      @heroine.save
      redirect_to heroine_path(@heroine)
    else
      @powers = Power.all
      flash[:notice] = @heroine.errors.full_messages
      render :new
    end
  end

  private
  def find_heroine
    @heroine = Heroine.find(params[:id])
  end

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end
end
