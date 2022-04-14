require 'json'
require_relative 'api_reader.rb'

class JsonInjector
  def getHashMapResponse
    idCount = 0
    hashMap = Hash.new
    json = ApiReader.new.getJsonResponse
    parsedJson = JSON.parse(json)
    parsedJson.each do |key, value|
      if value.class == Array
        value = value.inject(:merge)
      end
      if value.class == Hash
        value.each do |key1, value1|
          if key1 == "id" && idCount == 0
            hashMap["weather_id"] = value1
            idCount += 1
          elsif key1 == "id" && idCount == 1
            hashMap["system_id"] = value1
          else
            hashMap[key1] = value1
          end
        end
      else
        hashMap[key] = value
      end
    end
    return hashMap
  end

end
