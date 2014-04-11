# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class KoiWoShichaimashita < Base
          include Singleton

          def initialize
            super
            @name = "恋をしちゃいました！"
            @name_romaji = "koi wo shichaimashita"
            @nicknames = []
            @arranger = "平田祥一郎"
            @lyric_links = {
              :utamap => "http://www.utamap.com/showkasi.php?surl=k-110427-200",
              :utanet => "http://www.uta-net.com/song/112182/",
            }
            @youtube_links = []
            @itunes_links = [
              {
                :title => "恋にBooing ブー！",
                :uri => "https://itunes.apple.com/jp/album/id429866286",
              },
            ]
          end

          def cover?; true; end
        end
      end
    end
  end
end
