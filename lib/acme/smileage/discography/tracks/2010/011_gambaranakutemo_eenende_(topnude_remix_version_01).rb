# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class GambaranakutemoEenendeTopnudeRemixVersion01 < Base
          include Singleton

          def initialize
            super
            @name = "○○ がんばらなくてもええねんで!! (TopNude Remix Version 01)"
            @nicknames = []
            @arranger = "高橋諭一"
            @youtube_links = []
            @itunes_links = [
              {
                :title => "○○ がんばらなくてもええねんで!! (TopNude Remix Version 01)",
                :uri => "https://itunes.apple.com/jp/album/id385082027",
              },
            ]
          end

          def remix?; true; end
        end
      end
    end
  end
end
