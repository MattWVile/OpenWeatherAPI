# puts $LOAD_PATH
# puts 'hi'
# $LOAD_PATH << File.dirname("/OpenWeatherApi/test/framework/weather_dto.rb")
# puts $LOAD_PATH

Given(/^I make an API call$/) do
  @weather_dto = WeatherDTO.new
end

Then(/^Lon returns a Float value$/) do
  @weather_dto.checkLongtitudeType
end

Then(/^Lat returns a Float value$/) do
  @weather_dto.checkLatitudeType
end

Then(/^weather id returns an int value$/) do
  @weather_dto.checkWeatherIdType
end

Then(/^main returns an int value$/) do
  @weather_dto.checkMainType
end

Then(/^description returns a string value$/) do
  @weather_dto.checkDescriptionType
end

Then(/^icon returns a string value$/) do
  @weather_dto.checkIconType
end

Then(/^base returns a string value$/) do
  @weather_dto.getBase.kind_of? String
end

Then(/^temp returns a float or int value$/) do
  @weather_dto.checkTempType
end

Then(/^feels like returns a float or int value$/) do
  @weather_dto.checkFeelsLikeTempType
end

Then(/^temp min returns a float or int value$/) do
  @weather_dto.isMinTempAnIntOrFloat
end

Then(/^temp max returns a float or int value$/) do
  @weather_dto.isMaxTempAnIntOrFloat
end

Then(/^pressure returns an int value$/) do
  @weather_dto.getPressure.kind_of? Integer
end

Then(/^humidity returns an int value$/) do
  @weather_dto.getBase.kind_of? Integer
end

Then(/^visibility returns an int value$/) do
  @weather_dto.getVisibility.kind_of? Integer
end

Then(/^speed returns a float  value$/) do
  @weather_dto.getWindSpeed.kind_of? Float
end

Then(/^wind degrees returns an int value$/) do
  @weather_dto.getWindDegrees.kind_of? Integer
end

Then(/^all returns an int value$/) do
  @weather_dto.getCloudsAll.kind_of? Integer
end

Then(/^dt returns an int value$/) do
  @weather_dto.getDt.kind_of? Integer
end

Then(/^type returns an int value$/) do
  @weather_dto.getType.kind_of? Integer
end

Then(/^system id returns an int value$/) do
  @weather_dto.getSystemId.kind_of? Integer
end

Then(/^country returns a string value$/) do
  @weather_dto.getCountry.kind_of? String
end

Then(/^sunrise returns an int value$/) do
  @weather_dto.getSunrise.kind_of? Integer
end

Then(/^sunset returns an int value$/) do
  @weather_dto.getSunset.kind_of? Integer
end

Then(/^timezone returns an int value$/) do
  @weather_dto.getTimezone.kind_of? Integer
end

Then(/^id returns an int value$/) do
  @weather_dto.getCityId.kind_of? Integer
end

Then(/^name returns a string value$/) do
  @weather_dto.getName.kind_of? String
end

Then(/^cod returns an int value$/) do
  @weather_dto.getCod.kind_of? Integer
end