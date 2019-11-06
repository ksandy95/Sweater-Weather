class Forecast

  def initialize(forecast)
    @parsed_forecast = JSON.parse(forecast.body, symbolize_names: true)
    @forecast = @parsed_forecast
    @id = Time.now
    @latitude = @parsed_forecast[:latitude]
    @longitude = @parsed_forecast[:longitude]
    @currently = @parsed_forecast[:currently]
    @hourly_summary = @parsed_forecast[:hourly][:summary]
    @hourly_weather = @parsed_forecast[:hourly][:data]
    @daily_summary = @parsed_forecast[:daily][:summary]
    @daily_weather = @parsed_forecast[:daily][:data]
  end

end
