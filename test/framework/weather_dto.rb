require_relative 'json_injector'

class WeatherDTO
  HASHMAP = JsonInjector.new.getKeyPairs

  def getLongitude
    return HASHMAP["lon"]
  end

  def getLatitude
    return HASHMAP["lat"]
  end

  def getId
    return HASHMAP["id"]
  end

  def getMain
    return HASHMAP["main"]
  end

  def getDescription
    return HASHMAP["description"]
  end

  def getIcon
    return HASHMAP["icon"]
  end

  def getBase
    return HASHMAP["base"]
  end

  def getTemperature
    return HASHMAP["temp"]
  end

  def getFeelsLike
    return HASHMAP["feels_like"]
  end


  def getMinTemperature
    return HASHMAP["temp_min"]
  end


  def getMaxTemperatire
    return HASHMAP["temp_max"]
  end


  def getPressure
    return HASHMAP["pressure"]
  end


  def getHumidity
    return HASHMAP["humidity"]
  end


  def getVisibility
    return HASHMAP["visibility"]
  end


  def getDegrees
    return HASHMAP["deg"]
  end


  def getAll
    return HASHMAP["all"]
  end


  def getDt
    return HASHMAP["dt"]
  end


  def getType
    return HASHMAP["type"]
  end


  def getCountry
    return HASHMAP["country"]
  end


  def getSunrise
    return HASHMAP["sunrise"]
  end


  def getSunset
    return HASHMAP["sunset"]
  end


  def getTimezone
    return HASHMAP["timezone"]
  end


  def getName
    return HASHMAP["name"]
  end


  def getCod
    return HASHMAP["cod"]
  end

end
