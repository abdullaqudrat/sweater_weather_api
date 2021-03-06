class ForecastSerializer
  include FastJsonapi::ObjectSerializer
  set_type :forecast
  attributes :id, :location, :current_time, :current_date, :current_icon, :current_temp, :current_high, :current_low, :current_feels_like, :current_summary, :later_summary, :current_humidity, :current_visibility, :current_uv_index, :daily, :hourly

  attribute :current_time do |object|
    object.current_time
  end

  attribute :current_humidity do |object|
    object.current_humidity
  end

end
