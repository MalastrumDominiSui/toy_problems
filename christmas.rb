
def twelveDays(num)
	daynames = ["first", "second", "third", "fourth", "fifth", "sixth", "seventh", "eighth", "ninth", "tenth", "eleventh", "twelfth"]
	gifts = ["Partridge in a pear tree", "Turtle Doves", "French Hens", "Calling Birds", "Goldeeeeeeen Riiiinggggsss", "Geese a Laying","Geese a Laying", "Maids a Milking", "Ladies Dancing", "Lords a Leaping", "Pipers Piping", "Drummers Drumming"]

	i = 1
	while i <= num do
		puts "On the " + daynames[i-1] + " day of Christmas \nmy true love sent to me:"
		j=i
			while j>0 do
			puts "#{j} " + gifts[j-1]
			j -=1
			end
		i +=1
		puts "\n"
	end
end

twelveDays(12)