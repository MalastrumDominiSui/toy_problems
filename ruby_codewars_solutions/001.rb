class String
	def toJadenCase
		str_array = self.split(" ")
		other_array = str_array.each {|str| str[0] = str[0].upcase}
		other_array.join(" ")
	end
end

# TEST

str = "How can mirrors be real if our eyes aren't real"
expect = "How Can Mirrors Be Real If Our Eyes Aren't Real"
puts "toJadenCase is " + (str.toJadenCase == expect).to_s

def longest(a1, a2)
	a1 = a1.chars.uniq
	a2 = a2.chars.uniq
	return (a1 | a2).sort.join
end

puts "longest test is " + (longest("aretheyhere","yestheyarehere") == "aehrsty").to_s
puts "longest test 2 is " + (longest("loopingisfunbutdangerous", "lessdangerousthancoding")== "abcdefghilnoprstu").to_s
puts "longest test 3 is " + (longest("inmanylanguages", "theresapairoffunctions") ==  "acefghilmnoprstuy").to_s