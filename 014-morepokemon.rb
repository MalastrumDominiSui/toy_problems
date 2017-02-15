require 'net/http'
require 'json'
require 'sinatra'


GET "/" do


end

a = Net::HTTP.get('http://pokeapi.co/api/v2/', '/index.html') 
# uri = URI("http://pokeapi.co/api/v2/")
# my_hash = JSON.parse()
puts a


# def compareSpeed(num1,num2)
# 	speedA = getSpeedData(num1)
# 	speedB = getSpeedData(num2)
# 	nameA = getNameData(num1)
# 	nameB = getNameData(num2)

# end