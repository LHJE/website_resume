# This is really just here to show that I can expose a json
class Api::V1::ImageController < ApplicationController

  def show
    lat_and_long = SearchFacade.find_lat_and_long("denver, co")
    forecast = WeatherFacade.get_current_forecast(lat_and_long[:lat], lat_and_long[:lng])
    image = ImageFacade.get_image(forecast.current_weather, lat_and_long)
    render json: ImageSerializer.new(image), status: 200
  end

end
