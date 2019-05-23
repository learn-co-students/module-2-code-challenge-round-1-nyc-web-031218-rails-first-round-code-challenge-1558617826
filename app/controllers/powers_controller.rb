class PowersController < ApplicationController
  before_action :find_power, only: [:show]

  def index
    @powers = Power.all
  end

  def show
    # @power = Power.find_by(name: params[:name])
  end
  
  private
  def find_power
    @power = Power.find(params[:id])
  end
end
