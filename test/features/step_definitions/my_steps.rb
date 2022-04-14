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

Then(/^Longitude is a number between '-180' and '180'$/) do
  @weather_dto.checkLimitsOfLongtitude
end

Then(/^Latitude is a number between '-90' and '90'$/) do
  @weather_dto.checkLimitsOfLatitude
end

Then(/^pressure is an int between '870' and '1085'$/) do
  @weather_dto.isPressureAValidValue
end

Then(/^humidity is an int between '0' and '100'$/) do
  @weather_dto.isHumidityAValidValue
end

Then(/^visibility is an int between '0' and '10000'$/) do
  @weather_dto.isVisibilityAValidValue
end

Then(/^wind speed is an int between '0' and '113'$/) do
  @weather_dto.isWindSpeedAValidValue
end

Then(/^wind degrees is an int between '0' and '360'$/) do
  @weather_dto.isWindDegreesAValidValue
end

Then(/^cloud all is an int between '0' and '100'$/) do
  @weather_dto.isCloudAllAValidValue
end

Then(/^DTA is an int of '10' digits$/) do
  @weather_dto.isDTAValidValueForOurCentury
end

Then(/^sunrise is an int of '10' digits$/) do
  @weather_dto.isSunriseValidValueForOurCentury
end

Then(/^sunset is an int of '10' digits$/) do
  @weather_dto.isSunsetValidValueForOurCentury
end

Then(/^country is an string of '2' chars$/) do
  @weather_dto.isCountryAValidValue
end

Then(/^cod is an int of '200' when the call is a success$/) do
  @weather_dto.isCod200
end

Then(/^weather id is a number correlating to the description$/) do
  @weather_dto.checkWeatherIdValid
end

Then(/^main is a string generally describing the weather$/) do
  @weather_dto.checkIfMainIsValid
end

Then(/^description is a string more specifically describing the weather than main$/) do
  @weather_dto.checkIfDescriptionValid
end

Then(/^icon is a string correlating to an icon$/) do
  @weather_dto.checkIfIconValid
end

Then(/^temp is an int between the highest and lowest recorded temperatures$/) do
  @weather_dto.checkTempValid
end

Then(/^max temp is an int between the highest and lowest recorded temperatures$/) do
  @weather_dto.isTempMaxAValidKelvinValue
end

Then(/^min temp is an int between the highest and lowest recorded temperatures$/) do
  @weather_dto.isTempMinAValidKelvinValue
end

Then(/^feels like is an int between the highest and lowest recorded temperatures$/) do
  @weather_dto.checkFeelsLikeTempValid
end

Then(/^min temp is an int lower than max temp$/) do
  @weather_dto.isTempMinLessThanTempMax
end

Then(/^timezone is an int between the highest and lowest timezone values$/) do
  @weather_dto.isTimeZoneAValidValue
end

Then(/^city name is the same string as the one inputted in the config file$/) do
  @weather_dto.isNameSameAsInputtedName
end

Then(/^time between sunrise and sunset is an int between the longest and shortest days of the year worldwide$/) do
  @weather_dto.isTimeBetweenSunriseAndSunsetValide
end