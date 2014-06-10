#
# 100 lockers, 100 students
# each new student flips every nth locker
# we need to print a list of lockers and their states
#
#
#
class LockerChallenge
  NUM_LOCKERS = 100
  NUM_STUDENTS = 100
  def initialize
    @lockers = [false] * NUM_LOCKERS 
  end

  def student_pass(student_number)
    @lockers.each_index do |i|
      locker_number = i+1
      if locker_number % student_number == 0
        @lockers[i] = !@lockers[i]
      end
    end
  end

  def display_lockers
    @lockers.each_index do |i|
      puts "#{i+1}. #{locker_state(i)}"
    end
  end

  def locker_state(locker_index)
    if @lockers[locker_index]
      "open"
    else
      "closed"
    end
  end

  def send_all_students
    1.upto(NUM_STUDENTS) do |i|
      student_pass(i)
    end
  end

  def run_the_program
    send_all_students
    display_lockers
  end
end

locker_challenge = LockerChallenge.new
locker_challenge.run_the_program
