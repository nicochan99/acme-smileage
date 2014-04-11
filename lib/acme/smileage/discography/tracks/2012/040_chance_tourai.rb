# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class ChanceTourai < Base
          include Singleton

          def initialize
            super
            @name = "チャンス到来！"
            @name_romaji = "chance tourai"
            @nicknames = []
            @arranger = "板垣祐介"
            @lyric_links = {
              :utamap => "http://www.utamap.com/showkasi.php?surl=k-120201-013",
              :utanet => "http://www.uta-net.com/song/126048/",
            }
            @youtube_links = []
            @itunes_links = [
              {
                :title => "チョトマテクダサイ！",
                :uri => "https://itunes.apple.com/jp/album/id496149565",
              },
            ]
          end
        end
      end
    end
  end
end
