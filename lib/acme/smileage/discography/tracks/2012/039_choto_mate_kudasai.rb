# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class ChotoMateKudasai < Base
          include Singleton

          def initialize
            super
            @name = "チョトマテクダサイ！"
            @name_romaji = "choto mate kudasai!"
            @nicknames = ["チョトマテ"]
            @arrangers = ["平田祥一郎"]
            @hpma = HelloProjectMusicAward.new(2012, 27, 156.5, 96)
            @lyric_links = {
              :utamap => "http://www.utamap.com/showkasi.php?surl=k-120201-012",
              :utanet => "http://www.uta-net.com/song/125050/",
            }
            @youtube_links = [
              {
                :title => "スマイレージ 『チョトマテクダサイ！』 (MV)",
                :uri => "https://www.youtube.com/watch?v=OVwsVKzgR_Y",
              },
            ]
            @itunes_links = [
              {
                :title => "チョトマテクダサイ！",
                :uri => "https://itunes.apple.com/jp/album/id496149565",
              },
              {
                :title => "スマイレージ ベストアルバム完全版①",
                :uri => "https://itunes.apple.com/jp/album/id528168545",
              },
            ]
          end
        end
      end
    end
  end
end
