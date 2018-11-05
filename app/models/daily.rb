class Daily

  def initialize(daily_weather)
    daily = daily_weather
    @time = daily[:time] #epoch time
    @summary = daily[:summary]
    @high_temp = daily[:temperatureHigh] #farenheit
    @low_temp = daily[:temperatureLow] #farenheit
    @chance_of_precipitation = daily[:precipProbability] #farenheit
  end

end
