require_relative 'json_injector.rb'
class DTO
  @@hashMap_Response = JsonInjector.new.getHashMapResponse

  def checkLongtitudeType
    value = @@hashMap_Response["lon"]
    if value.class.eql?Integer
      return true
    else
      return false
    end
  end

  def checkLimitsOfLongtitude
    value = @@hashMap_Response["lon"]
    if value>=-180 && value <=180
      return true
    else
      return false
    end
  end

  def checkLatitudeType
    value = @@hashMap_Response["lat"]
    if value.class.eql?Integer
      return true
    else
      return false
    end
  end


  def checkLimitsOfLatitude
    value = @@hashMap_Response["lat"]
    if value>=-90 && value <=90
      return true
    else
      return false
    end
  end


  def checkIDType
    value = @@hashMap_Response["id"]
    if value.class.eql?Integer
      return true
    else
      return false
    end
  end

  def checkIfMainIsValid
    value = @@hashMap_Response["main"]
    valid_Mains = %w[Thunderstorm Drizzle Rain Snow Mist Smoke Haze Dust Sand Fog Ash Squall Tornado Clear Clouds]
    valid_Mains.each do |main|
      if main.eql?value
        return true
      end
    end
    return false
  end

  puts DTO.new.checkIfMainIsValid
    puts JsonInjector.new.getHashMapResponse
end
