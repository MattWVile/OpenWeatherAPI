require_relative 'weather_dto'
require 'rspec'
class TestingMethods



  describe WeatherDTO do
    it 'longtitude is integer' do
      puts WeatherDTO.new.getTemperature
      raise unless WeatherDTO.new.getTemperature.to eql(false)
    end



  end
  end



