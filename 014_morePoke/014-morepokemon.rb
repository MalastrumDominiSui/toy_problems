require 'httparty'
require 'json'
require 'sinatra'


get "/" do
	@stuff = HTTParty.get('http://pokeapi.co/api/v2/')
	erb :home
end


# uri = URI("http://pokeapi.co/api/v2/")
# my_hash = JSON.parse()



# def compareSpeed(num1,num2)
# 	speedA = getSpeedData(num1)
# 	speedB = getSpeedData(num2)
# 	nameA = getNameData(num1)
# 	nameB = getNameData(num2)

# end