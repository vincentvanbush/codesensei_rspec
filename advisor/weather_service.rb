class WeatherService
  def precipitation
    @precipitation ||= rand(20) # mm
  end

  def temperature
    @temperature ||= rand(-5..30) # celsius
  end
end
