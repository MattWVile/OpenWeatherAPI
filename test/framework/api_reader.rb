require 'net/http'

class ApiReader
  def getJsonResponse
    key = File.open("config").read.split(" ")[2]
    query = File.open("config").read.split(" ")[-1]
    uri = URI("http://api.openweathermap.org/data/2.5/weather?q=" + query + "&APPID=" + key)
    return Net::HTTP.get(uri)
  end
end
