class GardensController < ApplicationController
  def show
    # SHOW DETAILS ABOUT ONE
    @garden = Garden.find(params[:id])
    @plant = Plant.new
  end
end
