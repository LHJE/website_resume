require 'rails_helper'

describe Weather do
  before :each do
    @data = {
          "dt": 1604356053,
          "sunrise": 1604323817,
          "sunset": 1604361396,
          "temp": 75.31,
          "feels_like": 66.88,
          "pressure": 1026,
          "humidity": 8,
          "dew_point": 12.36,
          "uvi": 3.43,
          "clouds": 20,
          "visibility": 10000,
          "wind_speed": 4.7,
          "wind_deg": 110,
          "weather": [
              {
                  "id": 801,
                  "main": "Clouds",
                  "description": "few clouds",
                  "icon": "02d"
              }
          ]
      }
  end

  it "exists" do
    weather = Weather.new(@data)

    expect(weather).to be_a(Weather)
    expect(weather.current_weather).to be_a(String)
  end
end
