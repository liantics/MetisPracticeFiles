# use the FILE class in ruby
# two similar file methods to puts and gets
# read the file
#iterate over each line
#break the integers into two separate elements
#
#for each iteration, remove a chair
#
# => determine how many chairs are missing
# => eliminate that many children

class MusicalChairs

	def initialize(filename)
		@filename = filename
		@output_file = File.new("chairs.out", 'w')
		@round = 0
	end



	def read_file
		#get all the lines of the file to end of file
		file = File.open(@filename, "r")
		file.each_line do |line|
			@round += 1
			parse_line(line)
		end
		@output_file.close
	end

	def parse_line(line) 
		#split the line
		lines = line.split(" ")
		players = lines[0].to_i		
		chairs = lines[1].to_i
		eliminated = players - chairs 
		#send to write file
		write_to_file(eliminated)
	end

	def write_to_file(eliminated)
		#write to the file
		students_out = "Round ##{@round}: There are #{eliminated} chairless children. \n"
		File.open(@output_file, 'a') {|file| file.write(students_out)}

	end

end


musicalchair = MusicalChairs.new("chairs.in")
musicalchair.read_file

