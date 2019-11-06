class Forecast
  attr_reader :id, :forecast, :current_time, :current_summary, :current_icon,
              :current_temperature, :current_humidity, :current_visibility,
              :current_uv_index, :current_apparant_temperature, :hourly_summary,
              :hourly_weather, :daily_summary, :daily_weather

  def initialize(forecast)
    @parsed_forecast = JSON.parse(forecast.body, symbolize_names: true)
    @current_time = @parsed_forecast[:currently][:time]
    @forecast = @parsed_forecast
    @id = @parsed_forecast[:currently][:time]
    @current_icon = @parsed_forecast[:currently][:icon]
    @latitude = @parsed_forecast[:latitude]
    @longitude = @parsed_forecast[:longitude]
    @currently = @parsed_forecast[:currently]
    @current_temperature = @parsed_forecast[:currently][:temperature]
    @current_humidity = @parsed_forecast[:currently][:humidity]
    @current_uv_index = @parsed_forecast[:currently][:uvIndex]
    @current_apparant_temperature = @parsed_forecast[:currently][:apparentTemperature]
    @current_visibility = @parsed_forecast[:currently][:visibility]
    @current_summary = @parsed_forecast[:currently][:summary]
    @hourly_summary = @parsed_forecast[:hourly][:summary]
    @hourly_weather = @parsed_forecast[:hourly][:data]
    @daily_summary = @parsed_forecast[:daily][:summary]
    @daily_weather = @parsed_forecast[:daily][:data]
  end

end
