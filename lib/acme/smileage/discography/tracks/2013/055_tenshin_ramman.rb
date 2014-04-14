# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class TenshinRamman < Base
          include Singleton

          def initialize
            super
            @name = "天真爛漫"
            @name_romaji = "tenshin ramman"
            @nicknames = []
            @arrangers = ["大久保薫"]
            @hpma = HelloProjectMusicAward.new(2013, 32, 224.5, 148)
            @lyric_links = {
              :utamap => "http://www.utamap.com/showkasi.php?surl=k-130522-191",
              :utanet => "http://www.uta-net.com/song/146546/",
            }
            @youtube_links = []
            @itunes_links = [
              {
                :title => "②スマイルセンセーション",
                :uri => "https://itunes.apple.com/jp/album/id643254704",
              },
            ]
          end
        end
      end
    end
  end
end
