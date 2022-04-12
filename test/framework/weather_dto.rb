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

  def getId
    HASHMAP["id"]
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
 
end
