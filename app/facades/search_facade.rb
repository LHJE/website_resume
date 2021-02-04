class SearchFacade
  def self.find_lat_and_long(location)
    LocationService.get_lat_and_long(location)
  end
end
