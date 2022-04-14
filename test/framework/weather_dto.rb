require_relative 'json_injector'

class WeatherDTO
  hashmap = JsonInjector.new.getHashMapResponse

    def initialize(hashmap)
      @Hashmap = hashmap
    end

    def getLongitude
      @Hashmap["lon"]
    end

  def getLatitude
    @Hashmap["lat"]
  end

  def getWeatherId
    @Hashmap["weather_id"]
  end

  def getMain
    @Hashmap["main"]
  end

  def getDescription
    @Hashmap["description"]
  end

  def getIcon
    @Hashmap["icon"]
  end

  def getBase
    @Hashmap["base"]
  end

  def getTemperature
    @Hashmap["temp"]
  end

  def getFeelsLike
    @Hashmap["feels_like"]
  end

  def getMinTemperature
    @Hashmap["temp_min"]
  end

  def getMaxTemperature
    @Hashmap["temp_max"]
  end

  def getPressure
    @Hashmap["pressure"]
  end

  def getHumidity
    @Hashmap["humidity"]
  end

  def getVisibility
    @Hashmap["visibility"]
  end

  def getWindSpeed
    @Hashmap["speed"]
  end

  def getWindDegrees
    @Hashmap["deg"]
  end

  def getCloudsAll
    @Hashmap["all"]
  end

  def getDt
    @Hashmap["dt"]
  end

  def getType
    @Hashmap["type"]
  end

  def getType
    HASHMAP["type"]
  end

  def getSystemId
    @Hashmap["system_id"]
  end

  def getCountry
    @Hashmap["country"]
  end

  def getSunrise
    @Hashmap["sunrise"]
  end

  def getSunset
    @Hashmap["sunset"]
  end

  def getTimezone
    @Hashmap["timezone"]
  end

  def getCityId
    @Hashmap["id"]
  end

  def getName
    @Hashmap["name"]
  end

  def getCod
    @Hashmap["cod"]
  end


  def setLongitude(longitude)
    @Hashmap["lon"] = longitude
  end

  def setLatitude(latitude)
    @Hashmap["lat"] = latitude
  end

  def setWeatherId(id)
    @Hashmap["weather_id"] = id
  end

  def setMain(mn)
    @Hashmap["main"] = mn
  end

  def setDescription(des)
    @Hashmap["description"] = des
  end

  def setIcon(ic)
    @Hashmap["icon"] = ic
  end

  def setBase(bs)
    @Hashmap["base"] = bs
  end

  def setTemperature(temp)
    @Hashmap["temp"] = temp
  end

  def setFeelsLike(feelslike)
    @Hashmap["feels_like"] = feelslike
  end

  def setMinTemperature(mintemp)
    @Hashmap["temp_min"] = mintemp
  end

  def setMaxTemperature(maxtemp)
    @Hashmap["temp_max"] = maxtemp
  end

  def setPressure(pr)
    @Hashmap["pressure"] = pr
  end

  def setHumidity(hm)
    @Hashmap["humidity"] = hm
  end

  def setVisibility(vs)
    @Hashmap["visibility"] = vs
  end

  def setWindSpeed(ws)
    @Hashmap["speed"] = ws
  end

  def setWindDegrees(wd)
    @Hashmap["deg"] = wd
  end

  def setCloudsAll(ca)
    @Hashmap["all"] = ca
  end

  def setDt(dt)
    @Hashmap["dt"] = dt
  end

  def setSystemId(id)
    @Hashmap["system_id"] = id
  end

  def setCountry(country)
    @Hashmap["country"] = country
  end

  def setSunrise(sr)
    @Hashmap["sunrise"] = sr
  end

  def setSunset(ss)
    @Hashmap["sunset"] = ss
  end

  def setTimezone(tz)
    @Hashmap["timezone"] = tz
  end

  def setCityId(id)
    @Hashmap["id"] = id
  end

  def setName(name)
    @Hashmap["name"] = name
  end

  def setCod(cod)
    @Hashmap["cod"] = cod
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
    getWindDegrees >= 0 && getWindDegrees <= 360 ? true : false
  end

  def isCloudAllAValidValue
    getCloudsAll >= 0 && getCloudsAll <= 100 ? true : false
  end

  def isDTAValidValueForOurCentury
    getDt.to_s.length == 10 ? true : false
  end

  def isCountryAValidValue
    getCountry.length == 2 ? true : false
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
    if getLongitude.class == Float || getLongitude.class == Integer
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
    if getLatitude.class == Float || getLatitude.class == Integer
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
    getCityId.class == Integer ? true : false
  end

  def checkMainType
    if getMain.class == String
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
    if getDescription.class == String
      return true
    else
      return false
    end
  end

  def checkIfDescriptionValid

    value = getDescription
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
    value = getIcon
    if value.class == String
      return true
    else
      return false
    end
  end

  def checkIfIconValid
    des = getDescription
    des1 = ["light rain", "moderate rain", "heavy intensity rain", "very heavy rain", "extreme rain"]
    des2 = ["light intensity shower rain", "shower rain", "heavy intensity shower rain", "ragged shower rain"]
    if getMain == "Thunderstorm"
      if getIcon == "11d"
        return true
      end
    elsif getMain == 'Drizzle'
      if getIcon == "09d"
        return true
      end
    elsif getMain == "Rain"
      if des == "freezing rain"
        if getIcon == "13d"
          return true
        end
      elsif des1.include?(getIcon)
        if getIcon == "10d"
          return true
        end
      elsif des2.include?(getIcon)
        if getIcon == "09d"
          return true
        end
      end
    elsif getMain=="Snow"
      if getIcon== "13d"
        return true
      end
    elsif getMain == "Mist" || getMain == "Smoke" || getMain == "Haze" || getMain == "Dust" || getMain == "Fog" || getMain == "Sand" || getMain == "Ash" || getMain == "Squall" || getMain=="Tornado"
      if getIcon=="50d"
        return true
      end
    elsif getMain == "Clear"
      if getIcon == "01d" || getIcon=="01n"
        return true
      end
    elsif getMain== "Clouds"
      if des == "few clouds" || des == "few clouds: 11-25%"
        if getIcon == "02d" || getIcon == "02n"
          return true
        end
      elsif des == "scattered clouds" || des == "scattered clouds: 25-50%"
        if getIcon=="03d" || getIcon=="03n"
          return true
        end
      elsif des == "broken clouds" || des == "broken clouds: 51-84%" || des == "overcast clouds" || des == "overcast clouds: 85-100%"
        if getIcon == "04d" || getIcon == "04n"
          return true
        end
      else
      end
    end
    return false
  end

  def checkTempType
    getTemperature.class == Float || getTemperature.class == Integer ? true :false
  end

  def checkTempValid
    getTemperature > 182 && getTemperature < 330 ? true : false
  end

  def checkFeelsLikeTempType
    getFeelsLike.class == Float || getFeelsLike.class == Integer ? true : false
  end

  def checkFeelsLikeTempValid
    getFeelsLike > 182 && getFeelsLike < 330 ? true : false
  end

  def checkWeatherIdType
    getWeatherId.class == Integer ? true : false
  end

  def checkWeatherIdValid
    if getMain.eql?("Thunderstorm")
      description = ["thunderstorm with light rain", "thunderstorm with rain", "thunderstorm with heavy rain", "light thunderstorm", "thunderstorm", "heavy thunderstorm", "ragged thunderstorm", "thunderstorm with light drizzle", "thunderstorm with drizzle", "thunderstorm with heavy drizzle"]
      weather_id = [200, 201, 202, 210, 211, 212, 221, 230, 231, 232]
    elsif getMain.eql?("Drizzle")
      description = ["light intensity drizzle", "drizzle", "heavy intensity drizzle", "light intensity drizzle rain", "drizzle rain", "heavy intensity drizzle rain", "shower rain and drizzle", "heavy shower rain and drizzle", "shower drizzle"]
      weather_id = [300, 301, 302, 310, 311, 312, 313, 314, 321]
    elsif getMain.eql?("Rain")
      description = ["light rain", "moderate rain", "heavy intensity rain", "very heavy rain", "extreme rain", "freezing rain", "light intensity shower rain", "shower rain", "heavy intensity shower rain", "ragged shower rain"]
      weather_id = [500, 501, 502, 503, 504, 511, 520, 521, 522, 530]
    elsif getMain.eql?("Snow")
      description = ["light snow", "Snow", "Heavy snow", "Sleet", "Light shower sleet", "Shower sleet", "Light rain and snow", "Rain and snow", "Light shower snow", "Shower snow", "Heavy shower snow"]
      weather_id = [600, 601, 602, 611, 612, 613, 615, 616, 620, 621, 622]
    elsif getMain.eql?("Mist")
      if getWeatherId == 701
        return true
      else
        return false
      end
    elsif getMain.eql?("Smoke")
      if getWeatherId == 711
        return true
      else
        return false
      end

    elsif getMain.eql?("Haze")
      if getWeatherId == 721
        return true
      else
        return false
      end

    elsif getMain.eql?("Dust")
      if getDescription.eql?("sand/ dust whirls") && getWeatherId == 731
        return true
      elsif getDescription.eql?("dust") && getWeatherId == 761
        return true
      else
        return false
      end

    elsif getMain.eql?("Fog")
      if getWeatherId == 741
        return true
      else
        return false
      end

    elsif getMain.eql?("Sand")
      if getWeatherId == 751
        return true
      else
        return false
      end

    elsif getMain.eql?("Ash")
      if getWeatherId == 762
        return true
      else
        return false
      end
    elsif getMain.eql?("Squall")
      if getWeatherId == 771
        return true
      else
        return false
      end
    elsif getMain.eql?("Tornado")
      if getWeatherId == 781
        return true
      else
        return false
      end
    elsif getMain.eql?("Clear")
      if getWeatherId == 800
        return true
      else
        return false
      end
    elsif getMain.eql?("Clouds")
      description = ["few clouds", "scattered clouds", "broken clouds", "overcast clouds"]
      weather_id = [801, 802, 803, 804]
    end
    if getWeatherId == weather_id[description.find_index(getDescription)]
      return true
    else
      return false
    end
  end

  def checkSystemIdType
    getSystemId.class == Integer ? true : false
  end

  def isMaxTempAnIntOrFloat
    getMaxTemperature.kind_of?(Float) || getMaxTemperature.kind_of?(Integer) ? true : false
  end

  def isMinTempAnIntOrFloat
    getMinTemperature.kind_of?(Float) || getMinTemperature.kind_of?(Integer) ? true : false
  end

  def isWindSpeedIntOrFloat
    getWindSpeed.kind_of?(Float) || getWindSpeed.kind_of?(Integer) ? true : false
  end

end
