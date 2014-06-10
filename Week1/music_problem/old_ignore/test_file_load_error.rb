require "csv"
require "./mysongs"


class FindMusicByArtist

	def initialize(filename)
			@filename = filename
		end

end

find_songs = FindMusicByArtist.new("mysongs.csv")
find_songs