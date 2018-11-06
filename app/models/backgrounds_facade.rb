class BackgroundsFacade


  def initialize(location)
    @location = location
  end

  def get_backgrounds
    geocode_data = GeocodeService.new(@location).formatted_address_and_coordinates
  end
end
