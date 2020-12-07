require 'rails_helper'

RSpec.describe 'Weather Facade' do
  it "It returns current forecast" do
    lat = 39.738453
    lon = -104.984853

    forecast = WeatherFacade.get_current_forecast(lat, lon)

    expect(forecast.current_weather).to be_a(String)
  end
end
