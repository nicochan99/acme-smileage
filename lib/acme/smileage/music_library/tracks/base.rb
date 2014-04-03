require "date"

module Acme
  class Smileage
    module MusicLibrary
      class Track
        attr_reader :name, :lyric, :composer, :arranger, :albums
        attr_reader :youtube_mv_link, :youtube_danceshot_link, :itunes_link, :jacket_link

        def initialize(name, lyric, composer, arranger)
          @name = name
          @lyric = lyric
          @composer = composer
          @arranger = arranger
          @albums = []
        end

        def cover?; false; end
        def remix?; false; end
      end
    end
  end
end
