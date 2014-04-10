# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class JitenshaChiririn < Base
          include Singleton

          def initialize
            super
            @name = "自転車チリリン"
            @nicknames = ["チリリン"]
            @arranger = "藤澤慶昌"
            @lyric_links = {
              :utamap => "http://www.utamap.com/showkasi.php?surl=k-110810-161",
              :utanet => "http://www.uta-net.com/song/116847/",
            }
            @youtube_links = []
            @itunes_links = [
              {
                :title => "有頂天LOVE",
                :uri => "https://itunes.apple.com/jp/album/id449821485",
              },
            ]
          end
        end
      end
    end
  end
end
