require 'rspec'
require_relative 'weather_dto'

describe 'Weather_dto_test' do
  before :all do
    WEATHERDTO = WeatherDTO.new
  end

  context 'Validate returned data for fields' do

    it 'Check if min temperature ia a valid valuen value' do
      raise unless WEATHERDTO.isTempMinAValidKelvinValue
      end

    it 'Check if max temperature ia a valid valuen value' do
      raise unless WEATHERDTO.isTempMaxAValidKelvinValue
    end

    it 'Check if pressure ia a valid value' do
      raise unless WEATHERDTO.isPressureAValidValue
    end

    it 'Check if visibility ia a valid value' do
      raise unless WEATHERDTO.isVisibilityAValidValue
    end

    it 'Check if humidity ia a valid value' do
      raise unless WEATHERDTO.isHumidityAValidValue
    end

    it 'Check if wind speed ia a valid value' do
      raise unless WEATHERDTO.isWindSpeedAValidValue
    end

    it 'Check if wind degrees ia a valid value' do
      raise unless WEATHERDTO.isWindDegreesAValidValue
    end

    it 'Check if cloud all ia a valid value' do
      raise unless WEATHERDTO.isCloudAllAValidValue
    end

    it 'Check if DT ia a valid value for our century' do
      raise unless WEATHERDTO.isDTAValidValueForOurCentury
    end

    it 'Check if Timezone ia a valid value for our century' do
      raise unless WEATHERDTO.isTimeZoneAValidValue
    end

    it 'Check if country code ia a valid value' do
      raise unless WEATHERDTO.isCountryAValidValue
    end

    it 'Check if sunrise ia a valid value for our century' do
      raise unless WEATHERDTO.isSunriseValidValueForOurCentury
    end

    it 'Check if sunset ia a valid value for our century' do
      raise unless WEATHERDTO.isSunsetValidValueForOurCentury
    end

    it 'Check if time between sunrise and sunset ia a valid value' do
      raise unless WEATHERDTO.isTimeBetweenSunriseAndSunsetValid
    end

    it 'Check if city name is the same as the name inputted in config' do
      raise unless WEATHERDTO.isNameSameAsInputtedName
    end

    it 'Check if code is 200' do
      raise unless WEATHERDTO.isCod200
    end
  end

  context 'Validate returned data types for fields' do
    it 'Check if min temperature is a float' do
      raise unless WEATHERDTO.getMinTemperature.kind_of? Float
    end

    it 'Check if max temperature is a float ' do
      raise unless WEATHERDTO.getMaxTemperature.kind_of? Float
    end

    it 'Check if pressure ia an int' do
      raise unless WEATHERDTO.getPressure.kind_of? Integer
    end

    it 'Check if visibility is an int' do
      raise unless WEATHERDTO.getVisibility.kind_of? Integer
    end

    it 'Check if humidity is an int' do
      raise unless WEATHERDTO.getHumidity.kind_of? Integer
    end

    it 'Check if wind speed is an int' do
      raise unless WEATHERDTO.getWindSpeed.kind_of? Float
    end

    it 'Check if wind degrees is an int' do
      raise unless WEATHERDTO.getWindDegrees.kind_of? Integer
    end

    it 'Check if cloud all is an int' do
      raise unless WEATHERDTO.getCloudsAll.kind_of? Integer
    end

    it 'Check if DT is an int' do
      raise unless WEATHERDTO.getDt.kind_of? Integer
    end

    it 'Check if country code is a string' do
      raise unless WEATHERDTO.getCountry.kind_of? String
    end

    it 'Check if sunrise is an int' do
      raise unless WEATHERDTO.getSunrise.kind_of? Integer
    end

    it 'Check if sunset is an int' do
      raise unless WEATHERDTO.getSunset.kind_of? Integer
    end

    it 'Check if city name is a string' do
      raise unless WEATHERDTO.getName.kind_of? String
    end

    it 'Check if code is an int' do
      raise unless WEATHERDTO.getCod.kind_of? Integer
    end
  end
end
