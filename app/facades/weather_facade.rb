class WeatherFacade
  def self.get_current_forecast(lat, lon)
    forecast = WeatherService.get_current_weather(lat, lon)
    # I recognize I don't need to make a weather object, but I wanted to add it to show that I knew how to do that too.
    Weather.new(forecast)
  end
end
