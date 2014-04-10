# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class Yumemiru15saiPaxJaponicaGrooveRemix < Base
          include Singleton

          def initialize
            super
            @name = "夢見る 15歳 (PAX JAPONICA GROOVE REMIX)"
            @nicknames = []
            @arranger = "平田祥一郎"
            @lyric_links = {
              :utamap => "http://www.utamap.com/showkasi.php?surl=k-100526-018",
              :utanet => "http://www.uta-net.com/song/95255/",
            }
            @youtube_links = []
            @itunes_links = [
              {
                :title => "夢見る 15歳 (PAX JAPONICA GROOVE REMIX)",
                :uri => "https://itunes.apple.com/jp/album/id376313178",
              },
            ]
          end

          def remix?; true; end
        end
      end
    end
  end
end
