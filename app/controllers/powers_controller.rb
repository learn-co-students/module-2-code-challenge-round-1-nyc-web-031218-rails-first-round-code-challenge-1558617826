class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

def show
   @power = Power.find(params[:id])
end

def new
   @power = Power.new

end

def create
   @power = Power.new(service_params)
end

def update
   @power = Power.find(params[:id])
    @power.update(service_params)
    redirect_to power_path
end



def edit
   @power = Power.find(params[:id])
end

def destroy
   @power = Power.find(params[:id])
   @power.destroy
   redirect_to power_path
end


private
def service_params
  params.require(:power).permit(:name, :description)
end
end
