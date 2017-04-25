twoDeeArr = [[-1,-1,1,1,1],[-1,-1,1,1,1]]

i = 0
while i < twoDeeArr.length do
	j = 0
	while j < twoDeeArr[i].length do
		if twoDeeArr[i][j] == -1
			puts "Danger Will Robinson: at #{i},#{j}"
		end
		j+= 1
	end
	i+= 1
end