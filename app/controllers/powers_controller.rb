class PowersController < ApplicationController
  def index
      if params[:store]
      @hpowers = Power.where('power LIKE ?', "%#{params[:store]}%")
      else
      @powers = Power.all
    end
  end


  def show
    @power = Power.find(params[:id])
  end

  private
  def power_params(*args)
    params.require(:power).permit(:name, :super_name, :power_id, :store)
  end

end
