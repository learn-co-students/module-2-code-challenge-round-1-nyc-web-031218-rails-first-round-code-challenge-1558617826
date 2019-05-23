class HeroinesController < ApplicationController

  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find(heroine_params)
  end

  def new
    @heroine = Heroine.find
  end

  def create
    @heroine = Heroine.find(heroine_params)
    @heroine.update(heroine_params)
    if @heroine = valid?
      heroine.save
      redirect_to heroine_path
    else
      flash[:notice]
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private

  def heroine_params
  params.require(:heroine).permit(:name, :description:)
  end

end
