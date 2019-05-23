class HeroinesController < ApplicationController
  def index
      @heroines = Heroine.all
  end

  def new
    @heroine = Heroine.new
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  def create
    @heroine = Heroine.new(heroine_params)
    if @heroine.valid?
      @heroine.save
      redirect_to heroine_path(@heroine)
    else
      flash.now[:notice] = "#{@heroine.errors.messages.first[0]} "+"#{@heroine.errors.messages.first[1][0]}"
      render :new
    end
  end

  # def same_power
  #   @same_power = Heroine.same_power
  # end




  private
  def heroine_params(*args)
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end



end
