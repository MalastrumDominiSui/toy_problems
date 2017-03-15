require 'net/http'
require 'json'
require 'pry'
# 627-699 S 9th St, Omaha, NE 68102, USA
# Latitude: 41.253549 | Longitude: -95.927725

#https://api.darksky.net/forecast/[key]/[latitude],[longitude]

todaysHL = []
yestHL = []

compare = ""
umbrellaYorN = ""

MYKEY = "c9ab3f9423f6eb156dcdfad2ee1f35f5"
OMAHALATLON = "41.253549,-95.927725"



def getWeather()
	todayTime = Time.now.to_i
	yesterTime = todayTime-86400

	weatherJSONTodayUri = URI("https://api.darksky.net/forecast/#{MYKEY}/#{OMAHALATLON}")
	weatherJSONYestUri = URI("https://api.darksky.net/forecast/#{MYKEY}/#{OMAHALATLON},#{yesterTime}")
	
	# todayResponse = Net::HTTP.get(weatherJSONTodayUri)
	# # todayHash = JSON.parse(todayResponse).to_hash
	# puts todayResponse

	# yesterResponse = Net::HTTP.get(weatherJSONYestUri)
	# # yesterHash = JSON.parse(yesterResponse).to_hash
	# puts yesterHash

end

getWeather()
