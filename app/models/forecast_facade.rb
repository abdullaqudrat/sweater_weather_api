class ForecastFacade

  def initialize(location)
    @location = location
  end

  def get_forecast
    coordinates = GeocodeService.new(@location).get_coordinates
    raw_weather_data = WeatherService.new(coordinates).get_json
    binding.pry
    Weather.new(raw_weather_data)
  end

end
