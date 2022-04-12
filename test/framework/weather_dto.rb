require_relative 'json_injector'

class WeatherDTO

  HASHMAP = JsonInjector.new.getHashMapResponse
  puts HASHMAP

  def getLongitude
    HASHMAP["lon"]
  end

  def getLatitude
    HASHMAP["lat"]
  end

  def getWeatherId
    HASHMAP["weather_id"]
  end

  def getMain
    HASHMAP["main"]
  end

  def getDescription
    HASHMAP["description"]
  end

  def getIcon
    HASHMAP["icon"]
  end

  def getBase
    HASHMAP["base"]
  end

  def getTemperature
    HASHMAP["temp"]
  end

  def getFeelsLike
    HASHMAP["feels_like"]
  end

  def getMinTemperature
    HASHMAP["temp_min"]
  end

  def getMaxTemperature
    HASHMAP["temp_max"]
  end

  def getPressure
    HASHMAP["pressure"]
  end

  def getHumidity
    HASHMAP["humidity"]
  end

  def getVisibility
    HASHMAP["visibility"]
  end

  def getWindSpeed
    HASHMAP["speed"]
  end

  def getWindDegrees
    HASHMAP["deg"]
  end

  def getCloudsAll
    HASHMAP["all"]
  end

  def getDt
    HASHMAP["dt"]
  end

  def geSystemId
    HASHMAP["system_id"]
  end

  def getCountry
    HASHMAP["country"]
  end

  def getSunrise
    HASHMAP["sunrise"]
  end

  def getSunset
    HASHMAP["sunset"]
  end

  def getTimezone
    HASHMAP["timezone"]
  end

  def getId
    HASHMAP["id"]
  end

  def getName
    HASHMAP["name"]
  end

  def getCod
    HASHMAP["cod"]
  end

  def isTempMinLessThanTempMax
    getMinTemperature < getMaxTemperature ? true : false
  end

  def isTempMinAValidKelvinValue
    getMinTemperature > 182 && getMinTemperature < 330 ? true : false
  end

  def isTempMaxAValidKelvinValue
    getMaxTemperature > 182 && getMaxTemperature < 330 ? true : false
  end

  def isPressureAValidValue
    getPressure >= 870 && getPressure <= 1085 ? true : false
  end

  def isHumidityAValidValue
    getHumidity >= 0 && getHumidity <= 100 ? true : false
  end

  def isVisibilityAValidValue
    getVisibility >= 0 && getVisibility <= 10000 ? true : false
  end

  def isWindSpeedAValidValue
    getWindSpeed >= 0 && getWindSpeed <= 113 ? true : false
  end

  def isWindDegreesAValidValue
    getWindSpeed >= 0 && getWindSpeed <= 360 ? true : false
  end

  def isCloudAllAValidValue
    getWindSpeed >= 0 && getWindSpeed <= 100 ? true : false
  end

  def isDTAValidValueForOurCentury
    getDt.to_s.length == 10 ? true : false
  end

  def isCountryAValidValue
    getCountry == 2 ? true : false
  end

  def isSunriseValidValueForOurCentury
    getSunrise.to_s.length == 10 ? true : false
  end

  def isSunsetValidValueForOurCentury
    getSunset.to_s.length == 10 ? true : false
  end

  def isTimeBetweenSunriseAndSunsetValid
    getSunset - getSunrise <= 69660 && getSunset - getSunrise >= 8040 ? true : false
  end

  def isTimeZoneAValidValue
    getTimezone >= -43200 && getTimezone <= 50400 ? true : false
  end

  def isNameSameAsInputtedName
    File.open("config").read.split(" ")[-1].downcase == getName.downcase ? true : false
  end

  def isCod200
    getCod == 200 ? true : false
  end

  def checkLongtitudeType
    if getLongitude.class.eql? Integer
      return true
    else
      return false
    end
  end

  def checkLimitsOfLongtitude
    if getLongitude >= -180 && getLongitude <= 180
      return true
    else
      return false
    end
  end

  def checkLatitudeType

    if getLatitude.class.eql? Integer
      return true
    else
      return false
    end
  end

  def checkLimitsOfLatitude
    if getLatitude >= -90 && getLatitude <= 90
      return true
    else
      return false
    end
  end

  def checkCityIDType
    getId.class.eql? Integer ? true : false
  end

  def checkMainType
    if getMain.class.eql? String
      return true
    else
      return false
    end
  end

  def checkIfMainIsValid
    valid_Mains = %w[Thunderstorm Drizzle Rain Snow Mist Smoke Haze Dust Sand Fog Ash Squall Tornado Clear Clouds]
    valid_Mains.each do |main|
      if main.eql? getMain
        return true
      end
    end
    return false
  end

  def checkDescriptionType
    if getDescription.class.eql? String
      return true
    else
      return false
    end
  end

  def checkIfDescriptionValid

    value = WeatherDTO.new.getDescription
    if getMain.eql? "Thunderstorm"
      description = ["thunderstorm with light rain", "thunderstorm with rain", "thunderstorm with heavy rain", "light thunderstorm", "thunderstorm", "heavy thunderstorm", "ragged thunderstorm", "thunderstorm with light drizzle", "thunderstorm with drizzle", "thunderstorm with heavy drizzle"]
    elsif getMain.eql? "Drizzle"
      description = ["light intensity drizzle", "drizzle", "heavy intensity drizzle", "light intensity drizzle rain", "drizzle rain", "heavy intensity drizzle rain", "shower rain and drizzle", "heavy shower rain and drizzle", "shower drizzle"]
    elsif getMain.eql? "Rain"
      description = ["light rain", "moderate rain", "heavy intensity rain", "very heavy rain", "extreme rain", "freezing rain", "light intensity shower rain", "shower rain", "heavy intensity shower rain", "ragged shower rain"]
    elsif getMain.eql? "Snow"
      description = ["light snow", "Snow", "Heavy snow", "Sleet", "Light shower sleet", "Shower sleet", "Light rain and snow", "Rain and snow", "Light shower snow", "Shower snow", "Heavy shower snow"]
    elsif getMain.eql? "Mist"
      description = ["mist"]
    elsif getMain.eql? "Smoke"
      description = ["Smoke"]
    elsif getMain.eql? "Haze"
      description = ["Haze"]
    elsif getMain.eql? "Dust"
      description = ["sand", "sand/ dust whirls", "dust whirls", "dust"]
    elsif getMain.eql? "Fog"
      description = ["fog"]
    elsif getMain.eql? "Sand"
      description = ["sand"]
    elsif getMain.eql? "Ash"
      description = ["volcanic ash"]
    elsif getMain.eql? "Squall"
      description = ["squalls"]
    elsif getMain.eql? "Tornado"
      description = ["tornado"]
    elsif getMain.eql? "Clear"
      description = ["clear sky"]
    elsif getMain.eql? "Clouds"
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
    des = WeatherDTO.new.getDescription
    des1 = ["light rain", "moderate rain", "heavy intensity rain", "very heavy rain", "extreme rain"]
    des2 = ["light intensity shower rain", "shower rain", "heavy intensity shower rain", "ragged shower rain"]
    if getMain.eql? "Thunderstorm"
      if getIcon.eql? "11d"
        return true
      end
    elsif getMain.eql? 'Drizzle'
      if getIcon.eql?"09d"
        return true
      end
    elsif getMain.eql? "Rain"
      if des.eql?"freezing rain"
        if getIcon.eql?"13d"
          return true
        end
      elsif des1.include?(getIcon)
        if getIcon.eql?"10d"
          return true
        end
      elsif des2.include?(getIcon)
        if getIcon.eql?("09d")
          return true
        end
      end
    elsif getMain.eql? "Snow"
      if getIcon.eql?("13d")
        return true
      end
    elsif getMain.eql?("Mist") || getMain.eql?("Smoke") || getMain.eql?("Haze") || getMain.eql?("Dust") || getMain.eql?("Fog") || getMain.eql?("Sand") || getMain.eql?("Ash") || getMain.eql?("Squall") || getMain.eql?("Tornado")
      if getIcon.eql?("50d")
        return true
      end
    elsif getMain.eql?("Clear")
      if getIcon.eql?("01d") || getIcon.eql?("01n")
        return true
      end
    elsif getMain.eql?("Clouds")
      if des.eql?("few clouds") || des.eql?("few clouds: 11-25%")
        if getIcon.eql?("02d") || getIcon.eql?("02n")
          return true
        end
      elsif des.eql?("scattered clouds") || des.eql?("scattered clouds: 25-50%")
        if getIcon.eql?("03d") || getIcon.eql?("03n")
          return true
        end
      elsif des.eql?("broken clouds") || des.eql?("broken clouds: 51-84%") || des.eql?("overcast clouds") || des.eql?( "overcast clouds: 85-100%")
        if getIcon.eql?("04d") || getIcon.eql?("04n")
          return true
        end
      else
        return false
      end
    end
  end

  def checkTempType
    getTemperature.class.eql?(Float) || getTemperature.class.eql?(Integer) ? true :false
  end

  def checkTempValid
    getTemperature > 182 && getTemperature < 330 ? true : false
  end

  def checkFeelsLikeTempType
    getFeelsLike.class.eql?(Float) || getFeelsLike.class.eql?(Integer) ? true : false
  end

  def checkFeelsLikeTempValid
    getFeelsLike > 182 && getFeelsLike < 330 ? true : false
  end

end
