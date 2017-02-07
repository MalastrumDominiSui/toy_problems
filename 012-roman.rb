require "pry"

$romanLetsArr = ["I","V","X","L","C","D","M"]
$romanNumsArr = [1,5,10,50,100,500,1000]

def roman(num)
	i = 6 # alternatively array.length
	romanStr = ""
	while i >= 0
		if num >= $romanNumsArr[i]
			addNum = (num/$romanNumsArr[i]).floor
			romanStr = romanStr + $romanLetsArr[i]*addNum
			num = num % $romanNumsArr[i]
		end
		i -= 1
	end
	puts romanStr
end

roman(1000)
roman(500)
roman(200)
roman(25)
roman(2)
roman(15)