require 'json'
require_relative 'api_reader.rb'

class JsonInjector

  def getKeyPairs
  hashMap = Hash.new
  json = ApiReader.new.getJsonResponse
  parsedJson = JSON.parse(json)
  parsedJson.each do | key, value |
    if value.class == Array
      value = value.inject(:merge)
    end
    if value.class == Hash
      value.each do | key1, value1 |
        hashMap[key1] = value1
        end
    else
      hashMap[key] = value
    end
  end
  return hashMap
  end
end
