class MyHash

	def initialize
		@pairs = []
	end

	def inspect
		"{ #{@pairs.join(", ")} }"
	end

	def []=(key, value)
			matching_pair = find_pair(key)
			#This is tricky - the following line calls the "value=" method on the matching_pair variable
			#It's using a shortcut to represent the calling of the method with the value 
			#What it really looks like is: value=(value)
			#note the lack of space after the = 
			#which is because the arguments are arguments to the method named value=
			#for setter methods, ruby will "expand out" the equals sign for readability
		if matching_pair
			matching_pair.value = value 
		else
			@pairs << Pair.new(key, value)
		end
	end

	def find_pair(key)
		@pairs.find{ |pair| pair.key == key }
	end

	def [](key)
  	matching_pair = find_pair(key)
  	if matching_pair
  		# matching_pair :value
  		matching_pair.value
		end
	end
end

#-------------------------------------------------------------------------
# ----- !! make sure you're putting the code into the right class!! ------
#-------------------------------------------------------------------------

class Pair
	attr_reader :key, :value
	attr_writer :key, :value

	def initialize(key, value)
		@key = key
		@value = value
	end

	def to_s
		 "#{@key.inspect} => #{@value.inspect}"
	end

	 #attr_reader :key is IDENTICAL to the following GETTER:
		# def key
		# 	@key
		# end
	#it IS a method, that does exactly the same thing as the code above.

	#attr_writer :value this is identical to the following SETTER:
		# def value=(new_value) #this is a "setter" method
		# 	@value = new_value
		# end
	#it IS a method, that does exactly the same thing as the code above.


end