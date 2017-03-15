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