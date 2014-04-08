# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class GambaranakutemoIindayo < Base
          include Singleton

          def initialize
            super
            @name = "○○ がんばらなくてもいいんだよ!!"
            @nicknames = []
            @arranger = "高橋諭一"
            @youtube_links = []
            @itunes_links = [
              {
                :title => "○○ がんばらなくてもええねんで!!",
                :uri => "https://itunes.apple.com/jp/album/id382386730",
              },
            ]
          end
        end
      end
    end
  end
end
