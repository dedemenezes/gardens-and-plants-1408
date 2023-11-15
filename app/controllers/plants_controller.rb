class PlantsController < ApplicationController
#   def new
#     @garden = Garden.find(params[:garden_id])
#     @plant = Plant.new
#   end

  def create
    @plant = Plant.new(plant_param)
    @garden = Garden.find(params[:garden_id])
    @plant.garden = @garden
    if @plant.save
      redirect_to garden_path(@garden)
    else
      render 'gardens/show', status: :unprocessable_entity
    end
  end

  def destroy
    # find the stuff
    @plant = Plant.find(params[:id])
    # call stuff.destroy
    @plant.destroy
    redirect_to garden_path(@plant.garden), status: :see_other
  end


  private

  # STRONG PARAMS
  def plant_param
    params.require(:plant).permit(:name, :image_url)
  end
end
