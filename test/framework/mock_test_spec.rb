require 'rspec'
# require 'rspec-mocks'
require_relative 'json_injector'
require_relative 'weather_dto'

describe 'MockTest' do
  before :all do
    @json_Injector= instance_double("JsonInjector")
    @mock_Weather_Dto = instance_double('WeatherDTO')
    @hashmap = {"lon"=>139, "lat"=>35.6895, "weather_id"=>803, "main"=>"Clouds", "description"=>"broken clouds", "icon"=>"04n", "base"=>"stations", "temp"=>294.63, "feels_like"=>294.87, "temp_min"=>293.03, "temp_max"=>295.81, "pressure"=>1012, "humidity"=>78, "visibility"=>10000, "speed"=>5.66, "deg"=>190, "all"=>75, "dt"=>1649847154, "type"=>2, "system_id"=>2038398, "country"=>"JP", "sunrise"=>1649794302, "sunset"=>1649841098, "timezone"=>32400, "id"=>1850144, "name"=>"Tokyo", "cod"=>200}
    @weather_DTO = WeatherDTO.new(@hashmap)
  end


  context 'when getHashMapResponse is called' do
    it 'should return Hash object' do
      @json_Injector.stub(:getHashMapResponse).and_return({"lon"=>139, "lat"=>35.6895, "weather_id"=>803, "main"=>"Clouds", "description"=>"broken clouds", "icon"=>"04n", "base"=>"stations", "temp"=>294.63, "feels_like"=>294.87, "temp_min"=>293.03, "temp_max"=>295.81, "pressure"=>1012, "humidity"=>78, "visibility"=>10000, "speed"=>5.66, "deg"=>190, "all"=>75, "dt"=>1649847154, "type"=>2, "system_id"=>2038398, "country"=>"JP", "sunrise"=>1649794302, "sunset"=>1649841098, "timezone"=>32400, "id"=>1850144, "name"=>"Tokyo", "cod"=>200})
      expect(@json_Injector.getHashMapResponse.class).to eq(Hash)
    end
  end

  context 'Check get methods of Weather DTO class' do
    it 'get longtitude method should return longtitude' do
      expect(@weather_DTO.getLongitude).to eq(@hashmap["lon"])
    end

    it 'get longtitude method should return latitude' do
      expect(@weather_DTO.getLatitude).to eq(@hashmap["lat"])
    end

    it 'get weather id method should return weather id' do
      expect(@weather_DTO.getWeatherId).to eq(@hashmap["weather_id"])
    end

    it 'get main method should return main' do
      expect(@weather_DTO.getMain).to eq(@hashmap["main"])
    end

    it 'get description method should return description' do
      expect(@weather_DTO.getDescription).to eq(@hashmap["description"])
    end

    it 'get icon method should return icon' do
      expect(@weather_DTO.getIcon).to eq(@hashmap["icon"])
    end

    it 'get base method should return base' do
      expect(@weather_DTO.getBase).to eq(@hashmap["base"])
    end

    it 'get temp method should return temp' do
      expect(@weather_DTO.getTemperature).to eq(@hashmap["temp"])
    end

    it 'get feels like method should return feels like' do
      expect(@weather_DTO.getFeelsLike).to eq(@hashmap["feels_like"])
    end

    it 'get temp min method should return temp min' do
      expect(@weather_DTO.getMinTemperature).to eq(@hashmap["temp_min"])
    end

    it 'get temp max method should return temp max' do
      expect(@weather_DTO.getMaxTemperature).to eq(@hashmap["temp_max"])
    end

    it 'get pressure method should return pressure' do
      expect(@weather_DTO.getPressure).to eq(@hashmap["pressure"])
    end

    it 'get humidity method should return humidity' do
      expect(@weather_DTO.getHumidity).to eq(@hashmap["humidity"])
    end

    it 'get visibility method should return visibility' do
      expect(@weather_DTO.getVisibility).to eq(@hashmap["visibility"])
    end

    it 'get speed method should return speed' do
      expect(@weather_DTO.getWindSpeed).to eq(@hashmap["speed"])
    end

    it 'get deg method should return degree' do
      expect(@weather_DTO.getWindDegrees).to eq(@hashmap["deg"])
    end

    it 'get all method should return cloudiness' do
      expect(@weather_DTO.getCloudsAll).to eq(@hashmap["all"])
    end

    it 'get dt method should return time of date calculation' do
      expect(@weather_DTO.getDt).to eq(@hashmap["dt"])
    end

    it 'get type method should return system type' do
      expect(@weather_DTO.getType).to eq(@hashmap["type"])
    end

    it 'get system id method should return system id' do
      expect(@weather_DTO.getSystemId).to eq(@hashmap["system_id"])
    end

    it 'get country method should return country' do
      expect(@weather_DTO.getCountry).to eq(@hashmap["country"])
    end


    it 'get sunrise method should return sunrise' do
      expect(@weather_DTO.getSunrise).to eq(@hashmap["sunrise"])
    end


    it 'get sunset method should return sunset' do
      expect(@weather_DTO.getSunset).to eq(@hashmap["sunset"])
    end

    it 'get timezone method should return timezone' do
      expect(@weather_DTO.getTimezone).to eq(@hashmap["timezone"])
    end

    it 'get id method should return city id' do
      expect(@weather_DTO.getCityId).to eq(@hashmap["id"])
    end

    it 'get name method should return city name' do
      expect(@weather_DTO.getName).to eq(@hashmap["name"])
    end

    it 'get cod method should return cod' do
      expect(@weather_DTO.getCod).to eq(@hashmap["cod"])
    end
  end

  context 'Check all methods of temperature' do

    it 'should return true if min temperature is integer' do
      @weather_DTO.setMinTemperature(200)
      expect(@weather_DTO.isMinTempAnIntOrFloat).to eq(true )
    end

    it 'should return true if min temperature is float' do
      @weather_DTO.setMinTemperature(200.20)
      expect(@weather_DTO.isMinTempAnIntOrFloat).to eq(true )
    end

    it 'should return true if max temperature is integer' do
      @weather_DTO.setMaxTemperature(200)
      expect(@weather_DTO.isMaxTempAnIntOrFloat).to eq(true )
    end

    it 'should return true if max temperature is float' do
      @weather_DTO.setMaxTemperature(200.20)
      expect(@weather_DTO.isMaxTempAnIntOrFloat).to eq(true )
    end

    it 'should return true if min temperature is smaller than max temperature' do
      @weather_DTO.setMinTemperature(0)
      @weather_DTO.setMaxTemperature(1)
      expect(@weather_DTO.isTempMinLessThanTempMax).to eq(true )
    end

    it 'should return false if min temperature is greater than max temperature' do
      @weather_DTO.setMinTemperature(1)
      @weather_DTO.setMaxTemperature(0)
      expect(@weather_DTO.isTempMinLessThanTempMax).to eq(false )
    end

    it 'should return true if max temperature valid' do
      @weather_DTO.setMaxTemperature(200)
      expect(@weather_DTO.isTempMaxAValidKelvinValue).to eq(true)
    end


    it 'should return false if max temperature not valid' do
      @weather_DTO.setMaxTemperature(100)
      expect(@weather_DTO.isTempMaxAValidKelvinValue).to eq(false)
    end

    it 'should return true if min temperature valid' do
      @weather_DTO.setMinTemperature(200)
      expect(@weather_DTO.isTempMinAValidKelvinValue).to eq(true)
    end


    it 'should return false if min temperature not valid' do
      @weather_DTO.setMinTemperature(100)
      expect(@weather_DTO.isTempMinAValidKelvinValue).to eq(false)
    end
  end

  context 'Check the method for pressure' do
    it 'should return true if pressure is a valid value' do
      @weather_DTO.setPressure(900)
      expect(@weather_DTO.isPressureAValidValue).to eq(true )
    end

    it 'should return false if pressure is not a valid value' do
      @weather_DTO.setPressure(100)
      expect(@weather_DTO.isPressureAValidValue).to eq(false )
    end
  end

  context 'Check the method for humidity' do
    it 'should return true if humidity is a valid value' do
      @weather_DTO.setHumidity(50)
      expect(@weather_DTO.isHumidityAValidValue).to eq(true )
    end

    it 'should return false if humidity is not a valid value' do
      @weather_DTO.setHumidity(150)
      expect(@weather_DTO.isHumidityAValidValue).to eq(false )
    end
  end

  context 'Check the method for visibility' do
    it 'should return true if visibility is a valid value' do
      @weather_DTO.setVisibility(500)
      expect(@weather_DTO.isVisibilityAValidValue).to eq(true )
    end

    it 'should return false if visibility is not a valid value' do
      @weather_DTO.setVisibility(20000)
      expect(@weather_DTO.isVisibilityAValidValue).to eq(false )
    end
  end

  context 'Check the method for wind speed' do

    it 'should return true if wind speed is integer' do
      @weather_DTO.setWindSpeed(200)
      expect(@weather_DTO.isWindSpeedIntOrFloat).to eq(true )
    end

    it 'should return true if wind speed is float' do
      @weather_DTO.setWindSpeed(200.20)
      expect(@weather_DTO.isWindSpeedIntOrFloat).to eq(true )
    end

    it 'should return true if wind speed is a valid value' do
      @weather_DTO.setWindSpeed(100)
      expect(@weather_DTO.isWindSpeedAValidValue).to eq(true )
    end

    it 'should return false if wind speed is not a valid value' do
      @weather_DTO.setWindSpeed(200)
      expect(@weather_DTO.isWindSpeedAValidValue).to eq(false )
    end
  end

  context 'Check the method for wind degree' do
    it 'should return true if wind degree is a valid value' do
      @weather_DTO.setWindDegrees(300)
      expect(@weather_DTO.isWindDegreesAValidValue).to eq(true )
    end

    it 'should return false if wind degree is not a valid value' do
      @weather_DTO.setWindDegrees(500)
      expect(@weather_DTO.isWindDegreesAValidValue).to eq(false )
    end
  end

  context 'Check the method for cloundiness' do
    it 'should return true if cloudiness is a valid value' do
      @weather_DTO.setCloudsAll(30)
      expect(@weather_DTO.isCloudAllAValidValue).to eq(true )
    end

    it 'should return false if cloudiness is not a valid value' do
      @weather_DTO.setCloudsAll(500)
      expect(@weather_DTO.isCloudAllAValidValue).to eq(false )
    end
  end

  context 'Check the method for date and time' do
    it 'should return true if date and time is a valid value' do
      @weather_DTO.setDt(1649847154)
      expect(@weather_DTO.isDTAValidValueForOurCentury).to eq(true )
    end

    it 'should return false if date and time is not a valid value' do
      @weather_DTO.setDt(0)
      expect(@weather_DTO.isDTAValidValueForOurCentury).to eq(false )
    end
  end

  context 'Check the method for country' do
    it 'should return true if country is a valid value' do
      @weather_DTO.setCountry('ag')
      expect(@weather_DTO.isCountryAValidValue).to eq(true )
    end

    it 'should return false if country is not a valid value' do
      @weather_DTO.setCountry('abcd')
      expect(@weather_DTO.isCountryAValidValue).to eq(false )
    end
  end


  context 'Check the method for sunrise and sunset' do

    it 'should return true if sunrise is a valid value' do
      @weather_DTO.setSunrise(1649794302)
      expect(@weather_DTO.isSunriseValidValueForOurCentury).to eq(true )
    end

    it 'should return false if sunrise is not a valid value' do
      @weather_DTO.setSunrise(0)
      expect(@weather_DTO.isSunriseValidValueForOurCentury).to eq(false )
    end

    it 'should return true if sunset is a valid value' do
      @weather_DTO.setSunset(1649794302)
      expect(@weather_DTO.isSunsetValidValueForOurCentury).to eq(true )
    end

    it 'should return false if sunset is not a valid value' do
      @weather_DTO.setSunset(0)
      expect(@weather_DTO.isSunsetValidValueForOurCentury).to eq(false )
    end

    it 'should return true if time between sunrise and sunset is a valid value' do
      @weather_DTO.setSunrise(0)
      @weather_DTO.setSunset(10000)
      expect(@weather_DTO.isTimeBetweenSunriseAndSunsetValid).to eq(true )
    end

    it 'should return false if time between sunrise and sunset is not a valid value' do
      @weather_DTO.setSunrise(0)
      @weather_DTO.setSunset(70000)
      expect(@weather_DTO.isTimeBetweenSunriseAndSunsetValid).to eq(false )
    end

  end


  context 'Check the method for timezone' do
    it 'should return true if timezone is a valid value' do
      @weather_DTO.setTimezone(10000)
      expect(@weather_DTO.isTimeZoneAValidValue).to eq(true )
    end

    it 'should return false if timezone is not a valid value' do
      @weather_DTO.setTimezone(60000)
      expect(@weather_DTO.isTimeZoneAValidValue).to eq(false )
    end
  end

  context 'Check the method for cod' do
    it 'should return true if cod is a 200' do
      @weather_DTO.setCod(200)
      expect(@weather_DTO.isCod200).to eq(true )
    end

    it 'should return false if cod is not 200' do
      @weather_DTO.setCod(400)
      expect(@weather_DTO.isCod200).to eq(false )
    end
  end

  context 'Check the method for longitude' do
    it 'should return true if longitude is a float' do
      @weather_DTO.setLongitude(100.20)
      expect(@weather_DTO.checkLongtitudeType).to eq(true )
    end

    it 'should return true if longitude is a integer' do
      @weather_DTO.setLongitude(100)
      expect(@weather_DTO.checkLongtitudeType).to eq(true )
    end

    it 'should return true if longitude is within limits' do
      @weather_DTO.setLongitude(100)
      expect(@weather_DTO.checkLimitsOfLongtitude).to eq(true )
    end

    it 'should return true if longitude is not within limits' do
      @weather_DTO.setLongitude(200)
      expect(@weather_DTO.checkLimitsOfLongtitude).to eq(false)
    end

  end


  context 'Check the method for latitude' do
    it 'should return true if latitude is a float' do
      @weather_DTO.setLatitude(100.20)
      expect(@weather_DTO.checkLatitudeType).to eq(true )
    end

    it 'should return true if latitude is a integer' do
      @weather_DTO.setLatitude(40)
      expect(@weather_DTO.checkLatitudeType).to eq(true )
    end

    it 'should return true if latitude is within limits' do
      @weather_DTO.setLatitude(40)
      expect(@weather_DTO.checkLimitsOfLatitude).to eq(true )
    end

    it 'should return true if latitude is not within limits' do
      @weather_DTO.setLatitude(200)
      expect(@weather_DTO.checkLimitsOfLatitude).to eq(false)
    end

  end


  context 'Check the method for city id' do

    it 'should return true if city id is integer' do
      @weather_DTO.setCityId(100)
      expect(@weather_DTO.checkCityIDType).to eq(true )
    end

    it 'should return false if city id is not integer' do
      @weather_DTO.setCityId(100.4567)
      expect(@weather_DTO.checkCityIDType).to eq(false )
    end
  end

  context 'Check the method for main' do

    it 'should return true if main is string' do
      @weather_DTO.setMain("Rain")
      expect(@weather_DTO.checkMainType).to eq(true )
    end

    it 'should return false if main is not string' do
      @weather_DTO.setMain(100.4567)
      expect(@weather_DTO.checkMainType).to eq(false )
    end

    it 'should return true if main is from the list' do
      @weather_DTO.setMain("Rain")
      expect(@weather_DTO.checkIfMainIsValid).to eq(true )
    end

    it 'should return true if main is not from the list' do
      @weather_DTO.setMain("abcd")
      expect(@weather_DTO.checkIfMainIsValid).to eq(false )
    end

  end

  context 'Check the method for description' do

    it 'should return true if description is string' do
      @weather_DTO.setDescription("moderate rain")
      expect(@weather_DTO.checkDescriptionType).to eq(true )
    end

    it 'should return false if description is not string' do
      @weather_DTO.setDescription(12345)
      expect(@weather_DTO.checkDescriptionType).to eq(false )
    end

    it 'should return true if description is from the list and corresponding to main' do
      @weather_DTO.setMain("Rain")
      @weather_DTO.setDescription("moderate rain")
      expect(@weather_DTO.checkIfDescriptionValid).to eq(true )
    end

    it 'should return false if description is from the list and corresponding to main' do
      @weather_DTO.setMain("Rain")
      @weather_DTO.setDescription("thunderstorm with light rain")
      expect(@weather_DTO.checkIfDescriptionValid).to eq(false )
    end
  end

  context 'Check the method for icon' do

    it 'should return true if icon is string' do
      @weather_DTO.setIcon("11d")
      expect(@weather_DTO.checkIconType).to eq(true )
    end

    it 'should return false if icon is not string' do
      @weather_DTO.setIcon(12345)
      expect(@weather_DTO.checkIconType).to eq(false )
    end

    it 'should return true if icon is from the list and corresponding to main' do
      @weather_DTO.setMain("Clouds")
      @weather_DTO.setDescription("few clouds")
      @weather_DTO.setIcon("02d")
      expect(@weather_DTO.checkIfIconValid).to eq(true )
    end

    it 'should return false if icon is from the list and corresponding to main' do
      @weather_DTO.setMain("Rain")
      @weather_DTO.setDescription("moderate rain")
      @weather_DTO.setIcon("11d")
      expect(@weather_DTO.checkIfIconValid).to eq(false )
    end
  end


  context 'Check the method for temperature' do

    it 'should return true if temperature is integer' do
      @weather_DTO.setTemperature(200)
      expect(@weather_DTO.checkTempType).to eq(true )
    end

    it 'should return true if temperature is float' do
      @weather_DTO.setTemperature(200.20)
      expect(@weather_DTO.checkTempType).to eq(true )
    end

    it 'should return true if temperature is valid' do
      @weather_DTO.setTemperature(250)
      expect(@weather_DTO.checkTempValid).to eq(true )
    end

    it 'should return false if temperature is not valid' do
      @weather_DTO.setTemperature(100)
      expect(@weather_DTO.checkTempValid).to eq(false )
    end
  end

  context 'Check the method for feels like temperature' do

    it 'should return true if feels like temperature is integer' do
      @weather_DTO.setFeelsLike(200)
      expect(@weather_DTO.checkFeelsLikeTempType).to eq(true )
    end

    it 'should return true if feels like temperature is float' do
      @weather_DTO.setFeelsLike(200.20)
      expect(@weather_DTO.checkFeelsLikeTempType).to eq(true )
    end

    it 'should return true if feels like temperature is valid' do
      @weather_DTO.setFeelsLike(250)
      expect(@weather_DTO.checkFeelsLikeTempType).to eq(true )
    end

  end

  context 'Check the method for system id' do

    it 'should return true if system id is integer' do
      @weather_DTO.setSystemId(200)
      expect(@weather_DTO.checkSystemIdType).to eq(true )
    end

    it 'should return false if system id is not integer' do
      @weather_DTO.setSystemId(200.20)
      expect(@weather_DTO.checkSystemIdType).to eq(false )
    end

  end

  context 'Check the method for weather id' do

    it 'should return true if weather id is integer' do
      @weather_DTO.setWeatherId(200)
      expect(@weather_DTO.checkWeatherIdType).to eq(true )
    end

    it 'should return false if weather id is not integer' do
      @weather_DTO.setWeatherId(200.20)
      expect(@weather_DTO.checkWeatherIdType).to eq(false )
    end


    it 'should return true if weather id is from the list and corresponding to main' do
      @weather_DTO.setMain("Clouds")
      @weather_DTO.setDescription("few clouds")
      @weather_DTO.setWeatherId(801)
      expect(@weather_DTO.checkWeatherIdValid).to eq(true )
    end

    it 'should return false if weather id is from the list and corresponding to main' do
      @weather_DTO.setMain("Clouds")
      @weather_DTO.setDescription("few clouds")
      @weather_DTO.setWeatherId(500)
      expect(@weather_DTO.checkWeatherIdValid).to eq(false )
    end

  end





  end
