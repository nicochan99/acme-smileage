# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class PleaseMinisukaPostWoman < Base
          include Singleton

          def initialize
            super
            @name = "プリーズ ミニスカ ポストウーマン!"
            @nicknames = ["PMPW"]
            @arranger = "大久保薫"
            @lyric_links = {
              :utamap => "http://www.utamap.com/showkasi.php?surl=k-111228-031",
              :utanet => "http://www.uta-net.com/song/123904/",
            }
            @youtube_links = []
            @itunes_links = [
              {
                :title => "プリーズ ミニスカ ポストウーマン!",
                :uri => "https://itunes.apple.com/jp/album/idid487501137",
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
