class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end


  def new
  @heroine = Heroine.new

  end

  def create
    @heroine = Heroine.new(h_params)
    if @heroine.valid?
      @heroine.save
      redirect_to "/heroine/#{@heroine.id}"
    else
      flash[:notice] = @heroine.errors.messages
      redirect_to "/heroines/new"
  end
end

def show
  @heroine =  Heroine.find(params[:id])

end

private


def h_params
params.require(:heroine).permit(:name, :super_name, :power_id)
end


end
