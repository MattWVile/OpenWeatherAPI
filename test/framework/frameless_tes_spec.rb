require 'rspec'
require_relative 'json_injector'

describe 'FramelessTes' do
  before :all do
    @hashMap= JsonInjector.new.getHashMapResponse
  end

  context 'Check icon field of output' do
    it 'check if icon is valid' do
      des = @hashMap["description"]
      main = @hashMap["main"]
      icon = @hashMap["icon"]
      isValid = false
      des1 = ["light rain", "moderate rain", "heavy intensity rain", "very heavy rain", "extreme rain"]
      des2 = ["light intensity shower rain", "shower rain", "heavy intensity shower rain", "ragged shower rain"]
      if main == "Thunderstorm"
        if icon == "11d"
          isValid = true
        end
      elsif main == 'Drizzle'
        if main == "09d"
          isValid = true
        end
      elsif main == "Rain"
        if des == "freezing rain"
          if icon == "13d"
            isValid = true
          end
        elsif des1.include?(icon)
          if icon == "10d"
            isValid = true
          end
        elsif des2.include?(icon)
          if icon == "09d"
            isValid = true
          end
        end
      elsif main=="Snow"
        if icon== "13d"
          isValid = true
        end
      elsif main== "Mist" || main == "Smoke" || main == "Haze" || main == "Dust" || main == "Fog" || main == "Sand" || main == "Ash" || main == "Squall" || main=="Tornado"
        if icon=="50d"
          isValid = true
        end
      elsif main == "Clear"
        if icon == "01d" || icon=="01n"
          isValid = true
        end
      elsif main== "Clouds"
        if des == "few clouds" || des == "few clouds: 11-25%"
          if icon == "02d" || icon == "02n"
            isValid = true
          end
        elsif des == "scattered clouds" || des == "scattered clouds: 25-50%"
          if icon=="03d" || icon=="03n"
            isValid = true
          end
        elsif des == "broken clouds" || des == "broken clouds: 51-84%" || des == "overcast clouds" || des == "overcast clouds: 85-100%"
          if icon == "04d" || icon == "04n"
            isValid = true
          end
        else
        end
      end
      raise unless isValid
    end
  end
end
