class WelcomeController < ApplicationController
  def index
    lat_and_long = SearchFacade.find_lat_and_long("denver, co")
    forecast = WeatherFacade.get_current_forecast(lat_and_long[:lat], lat_and_long[:lng])
    @background_image = ImageFacade.get_image(forecast.current_weather, lat_and_long)
    @profile_images = [1,2,3,4,5]
  end
end




#
