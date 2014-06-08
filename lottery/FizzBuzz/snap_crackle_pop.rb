#for numbers 1 to 500
#if divisible by 3 snap
#if divisible by 7 pop
#if divisible by both, snap crackle pop

1.upto(100) do |i|

	if i % 21 == 0
		puts "snap, crackle, pop"
	elsif i % 3 == 0
		puts "snap"
	elsif i % 7 == 0
		puts "pop"
	else
		puts i
	end

end