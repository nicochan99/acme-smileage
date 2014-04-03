require "date"

module Acme
  class Smileage
    module MusicLibrary
      class Album
        attr_reader :name, :release_date, :tracks
        attr_reader :oricon, :sound_scan

        def initialize(name, release_date)
          @name = name
          @release_date = release_date
          @tracks = []
        end

        def <<(track)
          @tracks << track
          track.albums << self
        end
      end
    end
  end
end
