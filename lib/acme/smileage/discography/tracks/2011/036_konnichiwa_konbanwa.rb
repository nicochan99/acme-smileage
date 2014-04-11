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
            @name_romaji = "konnichiwa konbanwa"
            @nicknames = ["こんこん"]
            @arranger = "板垣祐介"
            @lyric_links = {
              :utamap => "http://www.utamap.com/showkasi.php?surl=k-111228-032",
              :utanet => "http://www.uta-net.com/song/123996/",
            }
            @youtube_links = []
            @itunes_links = [
              {
                :title => "プリーズ ミニスカ ポストウーマン！",
                :uri => "https://itunes.apple.com/jp/album/idid487501137",
              },
            ]
          end
        end
      end
    end
  end
end
