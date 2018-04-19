class MapsController < ApplicationController
  def show
    @map = Map.new(map_params)
  end

  private

  def map_params
    return params.require(:map).permit(:latitude, :longitude) if params[:map]
    default_params
  end

  def default_params
    { latitude: 0, longitude: 0 }
  end
end
