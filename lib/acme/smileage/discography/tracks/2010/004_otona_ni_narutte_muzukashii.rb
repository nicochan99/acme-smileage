# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class OtonaNiNarutteMuzukashii < Base
          include Singleton

          def initialize
            super
            @name = "オトナになるって難しい！！！"
            @nicknames = ["オトムズ", "オトむず"]
            @arranger = "板垣祐介"
            @lyric_links = {
              :utamap => "http://www.utamap.com/showkasi.php?surl=dk100527_6",
              :utanet => "http://www.uta-net.com/song/91873/",
            }
            @youtube_links = []
            @itunes_links = [
              {
                :title => "オトナになるって難しい！！！",
                :uri => "https://itunes.apple.com/jp/album/id366438599",
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
