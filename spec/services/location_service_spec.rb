require 'rails_helper'

RSpec.describe "Location Service" do
  it "Can return lat and long for a city" do
    location = LocationService.get_lat_and_long("denver, co")

    expect(location).to be_a(Hash)
    expect(location[:lat]).to be_a(Float)
    expect(location[:lng]).to be_an(Float)

    expect(location[:info]).to be_an(NilClass)
    expect(location[:options]).to be_an(NilClass)
    expect(location[:results]).to be_an(NilClass)
  end
end
