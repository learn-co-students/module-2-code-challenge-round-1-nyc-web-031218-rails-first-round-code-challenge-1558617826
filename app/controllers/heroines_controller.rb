class HeroinesController < ApplicationController

  def index
    @heroines = Heroine.all
  if params[:search]
    @heroines = Heroine.search(params[:search]).order("created_at DESC")
  else
    @heroines = Heroine.all.order('created_at DESC')
  end
end
  

  def show
  	@heroine = Heroine.find(params[:id])
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
  		flash[:notice] = "Unsuccessful"
  		redirect_to new_heroine_path
  	end
  end

  def edit
  	@heroine = Heroine.find(params[:id])

  end

  def update
  	@heroine = Heroine.find(params[:id])
  	if @heroine.update(heroine_params)
  		redirect_to heroine_path(@heroine)
  	else
  		flash[:notice] = "Unsuccessful"
  		redirect_to edit_heroine_path
  	end
  end

  def destroy
    @heroine = Heroine.find(params[:id])
    @heroine.delete
    redirect_to heroines_path
  end

  private

  def heroine_params
  	params.require(:heroine).permit(:name, :super_name, :power_id)
  end
end

