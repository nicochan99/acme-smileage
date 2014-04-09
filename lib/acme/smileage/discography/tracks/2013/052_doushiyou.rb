# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class Doushiyou < Base
          include Singleton

          def initialize
            super
            @name = "どうしよう"
            @nicknames = []
            @arranger = "平田祥一郎"
            @youtube_links = []
            @itunes_links = [
              {
                :title => "旅立ちの春が来た",
                :uri => "https://itunes.apple.com/jp/album/id611090467",
              },
            ]
          end
        end
      end
    end
  end
end