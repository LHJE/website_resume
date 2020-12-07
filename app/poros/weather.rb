class Weather
  attr_reader :id,
              :current_weather

  def initialize(data)
    @id = nil
    @current_weather = data[:weather][0][:description]
  end
end
