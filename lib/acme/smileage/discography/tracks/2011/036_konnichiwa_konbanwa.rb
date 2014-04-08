# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class KonnichiwaKonbanwa < Base
          include Singleton

          def initialize
            super
            @name = "こんにちは こんばんは"
            @nicknames = ["こんこん"]
            @arranger = "板垣祐介"
            @youtube_links = []
            @itunes_links = [
              {
                :title => "プリーズ ミニスカ ポストウーマン!",
                :uri => "https://itunes.apple.com/jp/album/idid487501137",
              },
            ]
          end
        end
      end
    end
  end
end
