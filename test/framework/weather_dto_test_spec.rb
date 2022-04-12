require 'rspec'
require_relative 'weather_dto'

describe 'Weather_dto_test' do
  before do
    WEATHERDTO = WeatherDTO.new
  end

  after do
    # Do nothing
  end

  context 'Check feels like temperature field' do
    it 'Check if feels like temperature is valid' do
      raise unless WEATHERDTO.checkFeelsLikeTempValid
    end
  end
end
