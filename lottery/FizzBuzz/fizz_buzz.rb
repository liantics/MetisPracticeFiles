# Get each integer from 1 up to 100
#  1.upto(100)
# Check for divisibility by 3 and by 5
#  - 
#
#

1.upto(100) do |i|
	if i % 15 == 0 #least common multiple of 3 and 5 is 15
		puts "fizz buzz"
	elsif i % 3 == 0
		puts "fizz"
	elsif i % 5 == 0
			puts "buzz"
	else
		puts i
	end
end


