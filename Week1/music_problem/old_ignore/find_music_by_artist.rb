require "csv"
#require "./mysongs"


class FindMusicByArtist

	def initialize() #filename
		#	@filename = filename
			

		end

		def play
			puts "in play"
			create_artists_songs_db
		end


		def create_artists_songs_db 
			music_hash = 
			{"Song_Name" =>"Broken Things","Artist"=>"Dave Matthews Band"}
			artists_songs_db = {}
			puts "before iterator"
			puts artists_songs_db
		# 	CSV.foreach(@filename, headers: true) do |row|
			row_num = 1	
			1.upto(row_num)  do |row|
				puts "in upto"

				if artists_songs_db.has_key?("Artist")
			 		 artists_songs_db row["Artist"] << row["Song_Name"]
			 		puts "inside iterator"
			# 	end
				puts "in if"
				else
				puts "in else"
					artists_songs_db row["Artist"] = row[]

				puts artists_songs_db
				# artists_songs_db

				end
				puts "done iterating"

			end
		end
end


find_songs = FindMusicByArtist.new#("mysongs.csv")
find_songs.play