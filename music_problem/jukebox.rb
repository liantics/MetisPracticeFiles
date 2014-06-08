#ask for input
#import databse
#loop:
# => ask user for artist name
# => print out the songs for that artist

require "./music_database_reader"

class Jukebox
	def initialize(music_database)
	 	@music_database = music_database
	end

	def play 
		#puts @music_database

		loop do
			artist_name = prompt_for_artist_name

			if artist_name.empty?
				break
			end

			if @music_database.has_key?(artist_name)
				puts @music_database[artist_name].sort
			else
				puts "Sorry #{artist_name} is not in the database."
			end

	end

		#prints list of songs for that key
	end

	def prompt_for_artist_name
	 puts "enter_artist_name"
	 gets.chomp
	end

	def search_for_artist(artist_name)

		if artist_name == ""
				puts "Sorry, there's no artist with that name"
		else
			#print_header(artist_name)
			puts @music_database[artist_name].inspect #get the songs out
		end
	end
	
end

this_music_database_reader = MusicDatabaseReader.new("music.csv")
got_it = this_music_database_reader.read

jukebox = Jukebox.new(got_it)
jukebox.play


