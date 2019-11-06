class Forecast

  def initialize(forecast)
    @forecast = forecast
    @id = Time.now
    @latitude = forecast[:latitude]
    @longitude = forecast[:longitude]
    @currently = forecast[:currently]
    @hourly_summary = forecast[:hourly][:summary]
    @hourly_weather = forecast[:hourly][:data]
    @daily_summary = forecast[:daily][:summary]
    @daily_weather = forecast[:daily][:data]
  end

end
