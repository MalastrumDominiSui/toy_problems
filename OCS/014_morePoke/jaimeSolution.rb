require 'net/http'
require 'json'
require 'pry'

puts "Enter # of the first pokemon:"
pokemon1 = gets.chomp

puts "Enter # of the second pokemon:"
pokemon2 = gets.chomp
 
def getPokemonSpeed(pokemon)
	poke_info = []
	poke_json = 'http://pokeapi.co/api/v2/pokemon/' + pokemon + '/'
	uri = URI(poke_json)
	response = Net::HTTP.get(uri)
	current_pokemon = JSON.parse(response).to_hash
	poke_info[0] = current_pokemon["stats"][0]["base_stat"]
	poke_info[1] = current_pokemon["name"]
	return poke_info
end

poke_speed1 = getPokemonSpeed(pokemon1)
poke_speed2 = getPokemonSpeed(pokemon2)

if poke_speed1[0] > poke_speed2[0]
	puts poke_speed1[1] + " is faster."
else
	puts poke_speed2[1] + " is faster."
end