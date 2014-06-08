class Wombat

	def initialize(name)
		@name = name
	end

	def greet
		puts "Hello #{self.name}" # <------ calls the method name, on this instance of Wombat
	end

	def name
		@name
	end

end

wombat = Wombat.new("Fred")
