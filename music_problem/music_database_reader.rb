# read csv file
#transform csv into  hash of string => array of strings

require "csv"

#Note: DO NOT require a .csv FILE. Ruby can only understand how to import ruby files, so 
#in the background, it tries to add the .rb extension, and chokes on the now-bad file name
	
class MusicDatabaseReader
	def initialize(file_name)
		@filename = file_name
		@music = {}
	end

	def read
		CSV.foreach(@filename, headers:true) do |row|

			song_name = row["Song_Name"] #uses the header as the index for getting to the elements
			artist_name = row["Artist"] #set the artist name to the value of the Artist key from the hash
			
			#Note: the exclamation point before @music - if there is NOT a key in the hash, this is
			#the first time through, so add the first key, and initialize its blank value
			if !@music.has_key?(artist_name)
				#since there's nothing in the new hash, yet, just create the key, 
				#and tell the hash that the value for the artist name key is an array
				@music[artist_name] = [] 
			end	
				#since an artist name key exusts
				@music[artist_name] << song_name

				#array_with_song_in_it = [song_name]
				#can be shortened to music[artist_name] = [song_name]
			
			
		end
		#puts @music
		@music
	end		


end

#music_database_reader = MusicDatabaseReader.new("music.csv")
#music_database_reader.read
