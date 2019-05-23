class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

    def show

    end

    def new

    end

    def create

    end

    def edit

    end

    def update

    end

    def destroy

    end

    private

    def power_params
      params.require(:power).permit(:name, :description, :heroine_id)
    end
end
