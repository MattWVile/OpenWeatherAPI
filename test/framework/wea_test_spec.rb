require 'minitest/autorun'
require 'rspec'
require_relative 'weather_dto'


describe 'WeaTest' do
  before do
    WEATHERDTO = WeatherDTO.new
  end

  after do
    # Do nothing
  end

  context 'when condition' do
    it 'succeeds' do
      raise unless WEATHERDTO.checkFeelsLikeTempValid
    end
  end
end
