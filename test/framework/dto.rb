require_relative 'json_injector.rb'
require_relative 'weather_dto'

class DTO
  def checkLongtitudeType
    value = WeatherDTO.new.getLongitude
    if value.class.eql? Integer
      return true
    else
      return false
    end
  end

  def checkLimitsOfLongtitude
    value = WeatherDTO.new.getLongitude
    if value >= -180 && value <= 180
      return true
    else
      return false
    end
  end

  def checkLatitudeType
    value = WeatherDTO.new.getLatitude
    if value.class.eql? Integer
      return true
    else
      return false
    end
  end

  def checkLimitsOfLatitude
    value = WeatherDTO.new.getLatitude
    if value >= -90 && value <= 90
      return true
    else
      return false
    end
  end

  def checkCityIDType
    value = WeatherDTO.new.getId
    if value.class.eql? Integer
      return true
    else
      return false
    end
  end

  def checkMainType
    value = WeatherDTO.new.getMain
    if value.class.eql? String
      return true
    else
      return false
    end
  end

  def checkIfMainIsValid
    value = WeatherDTO.new.getMain
    valid_Mains = %w[Thunderstorm Drizzle Rain Snow Mist Smoke Haze Dust Sand Fog Ash Squall Tornado Clear Clouds]
    valid_Mains.each do |main|
      if main.eql? value
        return true
      end
    end
    return false
  end

  def checkDescriptionType
    value = WeatherDTO.new.getDescription
    if value.class.eql? String
      return true
    else
      return false
    end
  end

  def checkIfDescriptionValid
    main = WeatherDTO.new.getMain
    value = WeatherDTO.new.getDescription
    if main.eql? "Thunderstorm"
      description = ["thunderstorm with light rain", "thunderstorm with rain", "thunderstorm with heavy rain", "light thunderstorm", "thunderstorm", "heavy thunderstorm", "ragged thunderstorm", "thunderstorm with light drizzle", "thunderstorm with drizzle", "thunderstorm with heavy drizzle"]
    elsif main.eql? "Drizzle"
      description = ["light intensity drizzle", "drizzle", "heavy intensity drizzle", "light intensity drizzle rain", "drizzle rain", "heavy intensity drizzle rain", "shower rain and drizzle", "heavy shower rain and drizzle", "shower drizzle"]
    elsif main.eql? "Rain"
      description = ["light rain", "moderate rain", "heavy intensity rain", "very heavy rain", "extreme rain", "freezing rain", "light intensity shower rain", "shower rain", "heavy intensity shower rain", "ragged shower rain"]
    elsif main.eql? "Snow"
      description = ["light snow", "Snow", "Heavy snow", "Sleet", "Light shower sleet", "Shower sleet", "Light rain and snow", "Rain and snow", "Light shower snow", "Shower snow", "Heavy shower snow"]
    elsif main.eql? "Mist"
      description = ["mist"]
    elsif main.eql? "Smoke"
      description = ["Smoke"]
    elsif main.eql? "Haze"
      description = ["Haze"]
    elsif main.eql? "Dust"
      description = ["sand", "sand/ dust whirls", "dust whirls", "dust"]
    elsif main.eql? "Fog"
      description = ["fog"]
    elsif main.eql? "Sand"
      description = ["sand"]
    elsif main.eql? "Ash"
      description = ["volcanic ash"]
    elsif main.eql? "Squall"
      description = ["squalls"]
    elsif main.eql? "Tornado"
      description = ["tornado"]
    elsif main.eql? "Clear"
      description = ["clear sky"]
    elsif main.eql? "Clouds"
      description = ["few clouds", "few clouds: 11-25%", "scattered clouds", "scattered clouds: 25-50%", "broken clouds", "broken clouds: 51-84%", "overcast clouds", "overcast clouds: 85-100%"]
    else
      return false
    end

    description.each do |des|
      if des.eql? value
        return true
      end
    end
    return false
  end

  def checkIconType
    value = WeatherDTO.new.getIcon
    if value.class.eql? String
      return true
    else
      return false
    end
  end

  def checkIfIconValid
    main = WeatherDTO.new.getMain
    des = WeatherDTO.new.getDescription
    value = WeatherDTO.new.getIcon
    des1 = ["light rain", "moderate rain", "heavy intensity rain", "very heavy rain", "extreme rain"]
    des2 = ["light intensity shower rain", "shower rain", "heavy intensity shower rain", "ragged shower rain"]
    if main.eql? "Thunderstorm"
      if value.eql? "11d"
        return true
      end
    elsif main.eql? 'Drizzle'
      if value.eql?"09d"
        return true
      end
    elsif main.eql? "Rain"
      if des.eql?"freezing rain"
        if value.eql?"13d"
          return true
        end
      elsif des1.include?(value)
          if value.eql?"10d"
            return true
          end
      elsif des2.include?(value)
        if value.eql?("09d")
          return true
        end
      end
      elsif main.eql? "Snow"
        if value.eql?("13d")
          return true
        end
      elsif main.eql?("Mist") || main.eql?("Smoke") || main.eql?("Haze") || main.eql?("Dust") || main.eql?("Fog") || main.eql?("Sand") || main.eql?("Ash") || main.eql?("Squall") || main.eql?("Tornado")
        if value.eql?("50d")
          return true
        end
    elsif main.eql?("Clear")
      if value.eql?("01d") || value.eql?("01n")
        return true
      end
    elsif main.eql?("Clouds")
      if des.eql?("few clouds") || des.eql?("few clouds: 11-25%")
        if value.eql?("02d") || value.eql?("02n")
          return true
        end
      elsif des.eql?("scattered clouds") || des.eql?("scattered clouds: 25-50%")
        if value.eql?("03d") || value.eql?("03n")
          return true
        end
      elsif des.eql?("broken clouds") || des.eql?("broken clouds: 51-84%") || des.eql?("overcast clouds") || des.eql?( "overcast clouds: 85-100%")
        if value.eql?("04d") || value.eql?("04n")
          return true
        end
      else
        return false
      end
    end
  end

  def checkTempType
    value = WeatherDTO.new.getTemperature
    if value.class.eql?(Float) || value.class.eql?(Integer)
      return true
    else
      return false
    end
  end

  def checkTempValid
    value = WeatherDTO.new.getTemperature
    if value > 182 && value < 330
      return true
    else
      return false
    end
  end

  def checkFeelsLikeTempType
    value = WeatherDTO.new.getFeelsLike
    if value.class.eql?(Float) || value.class.eql?(Integer)
      return true
    else
      return false
    end
  end

  def checkFeelsLikeTempValid
    value = WeatherDTO.new.getFeelsLike
    if value > 182 && value < 330
      return true
    else
      return false
    end
  end

end
