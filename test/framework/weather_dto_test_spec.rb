require 'rspec'
require_relative 'weather_dto'

describe 'Weather_dto_test' do
  before :all do
    WEATHERDTO = WeatherDTO.new
  end

  context 'Validate returned data for fields' do

    it 'Check if min temperature ia a valid value value' do
      raise unless WEATHERDTO.isTempMinAValidKelvinValue
      end

    it 'Check if max temperature ia a valid value value' do
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

    it 'Check if min temperature is a float or int' do
      raise unless WEATHERDTO.isMinTempAnIntOrFloat
    end

    it 'Check if max temperature is a float or int' do
      raise unless WEATHERDTO.isMaxTempAnIntOrFloat
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

    it 'Check if wind speed is an int or a float' do
      raise unless WEATHERDTO.isWindSpeedIntOrFloat
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

  context 'Check longitude field of output' do
    it 'check if longtitude is float' do
      raise unless WEATHERDTO.checkLongtitudeType
    end

    it 'check if longtitude is valid' do
      raise unless WEATHERDTO.checkLimitsOfLongtitude
    end
  end

  context 'Check longitude field of output' do
    it 'check if latitude is float' do
      raise unless WEATHERDTO.checkLatitudeType
    end

    it 'check if latitude is valid' do
      raise unless WEATHERDTO.checkLimitsOfLatitude
    end
  end

  context 'Check city id field of output' do
    it 'check if city id is integer' do
      raise unless WEATHERDTO.checkLatitudeType
    end

  end


  context 'Check main field of output' do
    it 'check if main is string' do
      raise unless WEATHERDTO.checkMainType
    end

    it 'check if main is valid' do
      raise unless WEATHERDTO.checkIfMainIsValid
    end
  end

  context 'Check description field of output' do
    it 'check if description is string' do
      raise unless WEATHERDTO.checkDescriptionType
    end

    it 'check if description is valid' do
      raise unless WEATHERDTO.checkIfDescriptionValid
    end
  end

  context 'Check icon field of output' do
    it 'check if icon is string' do
      raise unless WEATHERDTO.checkIconType
    end

    it 'check if icon is valid' do
      raise unless WEATHERDTO.checkIfIconValid
    end
  end

  context 'Check temperature field of output' do
    it 'check if temperature is string' do
      raise unless WEATHERDTO.checkTempType
    end

    it 'check if temperature is valid' do
      raise unless WEATHERDTO.checkTempValid
    end
  end

  context 'Check feels like temperature field of output' do
    it 'check if icon is string' do
      raise unless WEATHERDTO.checkFeelsLikeTempType
    end

    it 'check if feels like temperature is valid' do
      raise unless WEATHERDTO.checkFeelsLikeTempValid
    end
  end

  context 'Check weather id field of output' do
    it 'check if weather id is integer' do
      raise unless WEATHERDTO.checkWeatherIdType
    end

    it 'check if weather id is valid' do
      raise unless WEATHERDTO.checkWeatherIdValid
    end
  end

  context 'Check system id field of output' do
    it 'check if system id is integer' do
      raise unless WEATHERDTO.checkSystemIdType
    end
  end


end
