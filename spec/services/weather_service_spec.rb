require 'rails_helper'

RSpec.describe "Weather Service" do
  it "It returns current forecast" do
    lat = 39.738453
    lon = -104.984853

    weather = WeatherService.get_current_weather(lat, lon)

    expect(weather).to be_a(Hash)
    expect(weather[:dt]).to be_a(Numeric)
    expect(weather[:sunrise]).to be_a(Numeric)
    expect(weather[:sunset]).to be_a(Numeric)
    expect(weather[:temp]).to be_a(Numeric)
    expect(weather[:feels_like]).to be_a(Numeric)
    expect(weather[:pressure]).to be_a(Numeric)
    expect(weather[:humidity]).to be_a(Numeric)
    expect(weather[:dew_point]).to be_a(Numeric)
    expect(weather[:uvi]).to be_a(Numeric)
    expect(weather[:clouds]).to be_a(Numeric)
    expect(weather[:visibility]).to be_a(Numeric)
    expect(weather[:wind_speed]).to be_a(Numeric)
    expect(weather[:wind_deg]).to be_a(Numeric)
    expect(weather[:weather]).to be_a(Array)
    expect(weather[:weather][0]).to be_a(Hash)
    expect(weather[:weather][0][:id]).to be_a(Numeric)
    expect(weather[:weather][0][:main]).to be_a(String)
    expect(weather[:weather][0][:description]).to be_a(String)
    expect(weather[:weather][0][:icon]).to be_a(String)

    expect(weather[:minutely]).to be_a(NilClass)
    expect(weather[:hourly]).to be_a(NilClass)
    expect(weather[:daily]).to be_a(NilClass)
  end
end
