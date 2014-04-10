# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class GambaranakutemoEenende < Base
          include Singleton

          def initialize
            super
            @name = "○○ がんばらなくてもええねんで！！"
            @nicknames = ["がんばら"]
            @arranger = "高橋諭一"
            @lyric_links = {
              :utamap => "http://www.utamap.com/showkasi.php?surl=k-100728-116",
              :utanet => "http://www.uta-net.com/song/98771/",
            }
            @youtube_links = []
            @itunes_links = [
              {
                :title => "○○ がんばらなくてもええねんで！！",
                :uri => "https://itunes.apple.com/jp/album/id382386730",
              },
              {
                :title => "悪ガキッ①",
                :uri => "https://itunes.apple.com/jp/album/id403700742",
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
