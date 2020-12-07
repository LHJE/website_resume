class WelcomeController < ApplicationController
  def index
    lat_and_long = SearchFacade.find_lat_and_long("denver, co")
    forecast = WeatherFacade.get_current_forecast(lat_and_long[:lat], lat_and_long[:lng])
    @image = ImageFacade.get_image(forecast[:weather][0][:main], params[:location])
  end
end
