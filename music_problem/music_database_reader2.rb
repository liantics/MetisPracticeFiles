# read csv file
#transform csv into  hash of string => array of strings

###
### This is identical to music_database_reader.rb, but with the 
### if statement for populating the artist the first time extracted into a method
### called add_new_artist
###

require "csv"


class MusicDatabaseReader
	def initialize(file_name)
		@filename = file_name
		@music = {}
	end

	def read
		music = {}

		CSV.foreach(@filename, headers:true) do |row|

			song_name = row["Song_Name"] #uses the header as the index for getting to the elements
			artist_name = row["Artist"] #set the artist name to the value of the Artist key from the hash
			
			#puts "#{song_name} by #{artist_name}"
			
			add_new_artist(artist_name)
				#array_with_song_in_it = [song_name]
				music[artist_name] = song_name
				#can be shortened to music[artist_name] = [song_name]
			end
			
		end

		def add_new_artist(artist_name)
			if music.has_key?(artist_name)
				music[artist_name] << song_name
		end
		#puts music
		music
	end		


end

#music_database_reader = MusicDatabaseReader.new("music.csv")
#music_database_reader.read