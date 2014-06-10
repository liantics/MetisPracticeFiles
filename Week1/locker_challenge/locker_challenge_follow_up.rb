
NUM_LOCKERS = NUM_STUDENTS = 100 #if they're always going to be the same

lockers = [false] * 100
	

	1.upto(NUM_STUDENTS) do |student_number|
		0.upto(NUM_LOCKERS-1) do |locker_num|
			if locker_num % student_number == 0
				lockers[locker_num -1 ] = !lockers[locker_num - 1]
			end
		end
	end


lockers.each_with_index do |locker, index| #look up enumerables for doc on this, allows you to get the element number as well as its content
	print "#{index + 1}: "
	if locker
		puts "open"
	else
		puts "closed"
	end
end