require "pry"
$pokemon_types = ["normal","fire","water","electric","grass","ice","fighting","poison","ground","flying","psychic","bug","rock","ghost","dragon","dark","steel","fairy"]

$battle_chart = [[1,1,1,1,1,1,1,1,1,1,1,1,0.5,0,1,1,0.5,1], #Normal Attacking
            [1,0.5,0.5,1,2,2,1,1,1,1,1,2,0.5,1,0.5,1,2,1], #Fire Attacking
            [1,2,0.5,1,0.5,1,1,1,2,1,1,1,2,1,0.5,1,1,1], #Water Attacking
            [1,1,2,0.5,0.5,1,1,1,0,2,1,1,1,1,0.5,1,1,1], #Electric Attacking
            [1,0.5,2,1,0.5,1,1,0.5,2,0.5,1,0.5,2,1,0.5,1,0.5,1], #Grass Attacking
            [1,0.5,0.5,1,0.5,1,1,0.5,2,0.5,1,0.5,2,1,0.5,1,0.5,1], #Ice Attacking
            [2,1,1,1,1,2,1,0.5,1,0.5,0.5,0.5,2,0,0.5,1,0.5,1], #Fighting Attacking
            [1,1,1,1,2,1,1,0.5,0.5,1,1,1,0.5,0.5,1,1,0,2], #Poison Attacking
            [1,2,1,2,0.5,1,1,2,1,0,1,0.5,2,1,1,1,2,1], # Ground Attacking
            [1,1,1,0.5,2,1,2,1,1,1,1,2,0.5,1,1,1,0.5,1], # Flying Attacking
            [1,1,1,1,1,1,2,2,1,1,0.5,1,1,1,1,0,0.5,1], # Psychic Attacking
            [1,0.5,1,1,2,1,0.5,0.5,1,0.5,2,1,1,0.5,1,2,0.5,0.5], #Bug Attacking
            [1,2,1,1,1,2,0.5,1,0.5,2,1,2,1,1,1,1,0.5,1], # Rock Attacking
            [0,1,1,1,1,1,1,1,1,1,2,1,1,2,1,0.5,1,1], #Ghost Attacking
            [1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,0.5,0], #Dragon Attacking
            [1,1,1,1,1,1,0.5,1,1,1,2,1,1,2,1,0.5,1,0.5], # Dark Attacking
            [1,0.5,0.5,0.5,1,2,1,1,1,1,1,1,2,1,1,1,0.5,2], # Steel Attacking
            [1,0.5,1,1,1,1,2,0.5,1,1,1,1,1,1,2,2,0.5,1]]# Fairy Attacking

#given a string, returns the array index of that string, assumes no two are equal

def moveMult(typeStr)
      return $pokemon_types.index(typeStr)
end


#takes a string of the move type, and an array of strings of the enemy pokemon, returns the move multiplier


def totalAttack(pokeMoveStr, pokeTypeStr)      
      i = 0
      moveValue = 1
      while i < pokeTypeStr.length
            moveValue = moveValue * $battle_chart[moveMult(pokeMoveStr)][moveMult(pokeTypeStr[i])]
            i+= 1
      end
      return moveValue
end


#test moveMult

puts "test 1 moveMult: #{moveMult("fire") == 1}"

puts "test 2 moveMult: #{moveMult("normal") == 0}"

#test totalAttack


puts "test 3 totalAttack: #{ totalAttack("fire", ["water","fighting"]) == 0.5}"

puts "test 4 total Attack: #{ totalAttack("normal", ["normal","normal"]) == 1}"

puts "test 5 total Attack: #{ totalAttack("water", ["electric","flying"]) == 1}"




