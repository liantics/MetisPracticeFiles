# create 100 closed lockers 
# for each student in the school
#  - send the student down the hall, read the locker numbers
#  - when a locker number can be divided by the student's number
#			- change the current locker door state
# display the final state of each locker

class My_Locker_Challenge
	NUM_LOCKERS = 5
	NUM_STUDENTS = 5

	def initialize
		@lockers = [false] * NUM_LOCKERS
	end

	def lockerpalooza
		send_students
		look_down_the_hall
	end

	def send_students
		student = 1
		while student < NUM_STUDENTS do
			student_pass
			student += 1
		end
	end

	def student_pass
		if current_locker_num % student_number == 0
			@lockers = !@lockers
			student_number += 1
		end
	end


	def current_locker_num
		locker_num = @lockers.index+1
	end

	def look_down_the_hall
		@lockers.each_index do |current|
			puts "#{i+1}. #{door_position(i)}"
			i += 1
		end
	end

	def door_position(current_locker)
		if @lockers[i]
			puts "open"
		else
			puts "closed"
		end
	end

end

slam_the_doors = My_Locker_Challenge.new
slam_the_doors.lockerpalooza



