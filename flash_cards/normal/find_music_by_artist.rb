require './musiccards'
require 'csv'

class FindMusicByArtist

	def initialize(filename)
			@filename = filename
		end

		# def create_artists_songs_db 
		# 	artists_songs_db = {}
		# 	puts "before iterator"
		# 	puts artists_songs_db
		# 	CSV.foreach(@filename, headers: true) do |row|	
		# 		artists_songs_db row["Artist"] = row["Song_Name"]
		# 		puts "inside iterator"
		# 	end
		# 	puts "done iterating"
		# 	puts artists_songs_db
		# 	# artists_songs_db
		# end
end

find_songs = FindMusicByArtist.new("musiccards.csv")
find_songs