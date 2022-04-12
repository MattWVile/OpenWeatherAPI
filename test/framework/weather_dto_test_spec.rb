require 'rspec'
require_relative 'weather_dto'

describe 'Weather_dto_test' do
  before :all do
    WEATHERDTO = WeatherDTO.new
  end

  context 'Validate returned data for fields' do
    it 'Check if min temperature is less than max temperature' do
      raise unless WEATHERDTO.isTempMinLessThanTempMax
    end

    it 'Check if min temperature is a valid kelvin value' do
      raise unless WEATHERDTO.isTempMinAValidKelvinValue
      end

    it 'Check if max temperature is a valid kelvin value' do
      raise unless WEATHERDTO.isTempMaxAValidKelvinValue
    end

    it 'Check if pressure is a valid value' do
      raise unless WEATHERDTO.isPressureAValidValue
    end

    it 'Check if visibility is a valid value' do
      raise unless WEATHERDTO.isVisibilityAValidValue
    end

    it 'Check if humidity is a valid value' do
      raise unless WEATHERDTO.isHumidityAValidValue
    end

    it 'Check if wind speed is a valid value' do
      raise unless WEATHERDTO.isWindSpeedAValidValue
    end

    it 'Check if wind degrees is a valid value' do
      raise unless WEATHERDTO.isWindDegreesAValidValue
    end

    it 'Check if cloud all is a valid value' do
      raise unless WEATHERDTO.isCloudAllAValidValue
    end

    it 'Check if DTA is a valid value for our century' do
      raise unless WEATHERDTO.isDTAValidValueForOurCentury
    end

    it 'Check if country code is a valid value' do
      raise unless WEATHERDTO.isCountryAValidValue
    end

    it 'Check if sunrise is a valid value for our century' do
      raise unless WEATHERDTO.isSunriseValidValueForOurCentury
    end

    it 'Check if sunset is a valid value for our century' do
      raise unless WEATHERDTO.isSunsetValidValueForOurCentury
    end

    it 'Check if time between sunrise and sunset is a valid value' do
      raise unless WEATHERDTO.isTimeBetweenSunriseAndSunsetValid
    end

    it 'Check if city name is the same as the name inputted in config' do
      raise unless WEATHERDTO.isNameSameAsInputtedName
    end

    it 'Check if code is 200' do
      raise unless WEATHERDTO.isCod200
    end

  end
end
