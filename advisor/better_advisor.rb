require_relative 'weather_service'

class BetterAdvisor
  def initialize
    @weather_service = WeatherService.new
  end

  def clothes
    temperature = @weather_service.temperature
    prec = @weather_service.precipitation

    if temperature < 10
      :coat
    elsif temperature < 18
      if prec <= 10
        :jumper
      else
        :coat
      end
    else
      if prec < 10
        :t_shirt
      else
        :jumper
      end
    end
  end
end
