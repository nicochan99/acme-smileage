# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class SmileBlues < Base
          include Singleton

          def initialize
            super
            @name = "すまいるブルース/須磨入姉妹"
            @nicknames = []
            @arranger = "高橋諭一"
            @youtube_links = []
            @itunes_links = [
              {
                :title => "ドットビキニ",
                :uri => "https://itunes.apple.com/jp/album/id518280952",
              },
            ]
          end
        end
      end
    end
  end
end
