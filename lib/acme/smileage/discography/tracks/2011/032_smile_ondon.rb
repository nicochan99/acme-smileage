# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class SmileOndon < Base
          include Singleton

          def initialize
            super
            @name = "スマイル音丼"
            @nicknames = []
            @arranger = "オオバコウスケ"
            @youtube_links = []
            @itunes_links = [
              {
                :title => "タチアガール",
                :uri => "https://itunes.apple.com/jp/album/id464722574",
              },
            ]
          end
        end
      end
    end
  end
end
