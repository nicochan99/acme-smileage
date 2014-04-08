# -*- encoding: utf-8 -*-

require "date"
require "singleton"

module Acme
  class Smileage
    class Discography
      module Tracks
        class Base
          attr_reader :name, :nicknames, :lyric, :composer, :arranger
          attr_reader :youtube_links, :itunes_links

          def initialize
            @lyric = "つんく♂"
            @composer = "つんく♂"
          end

          def cover?; false; end
          def remix?; false; end
        end
      end
    end
  end
end
