require 'rspec'
require_relative 'weather_dto'

describe 'WeatherTest' do
  before do
    WEATHERDTO = WeatherDTO.new
  end

  after do
    # Do nothing
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


end
