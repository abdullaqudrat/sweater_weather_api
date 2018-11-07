class FavoritesFacade

  def initialize(favorites)
    @favorites = favorites
  end

  def get_favorites_and_forecast
    @favorites.map do |favorite|
      ForecastFacade.new(favorite.location).get_forecast
    end
  end

end
