class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

def show
   @heroine = Heroine.find(params[:id])
end

def new
   @heroine = Heroine.new
   @powers = Power.all
end

def create
   @heroine = Heroine.new(service_params)
 if @heroine.valid?
  @heroine.save
  redirect_to heroine_path
 else
  flash.now[:notice] = @heroine.errors.full_messages
 render :new
 end
end

def update
   @heroine = Heroine.find(params[:id])
    @heroine.update(service_params)
   if @heroine.valid?
    @heroine.save
    redirect_to heroine_path
   else
    flash.now[:notice] = @heroine.errors.full_messages
   render :new
   end
end



def edit
   @heroine = Heroine.find(params[:id])
end

def destroy
   @heroine = Heroine.find(params[:id])
   @heroine.destroy
   redirect_to heroine_path
end


private
def service_params
  params.require(:heroine).permit(:name, :super_name, :power_id)
end
end
