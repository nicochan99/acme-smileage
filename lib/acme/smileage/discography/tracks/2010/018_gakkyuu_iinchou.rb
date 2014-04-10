# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class GakkyuuIinchou < Base
          include Singleton

          def initialize
            super
            @name = "学級委員長"
            @nicknames = []
            @arranger = "鈴木Daichi秀行"
            @lyric_links = {
              :utamap => "http://www.utamap.com/showkasi.php?surl=k-101208-048",
              :utanet => "http://www.uta-net.com/song/105945/",
            }
            @youtube_links = []
            @itunes_links = [
              {
                :title => "悪ガキッ①",
                :uri => "https://itunes.apple.com/jp/album/id403700742",
              },
            ]
          end
        end
      end
    end
  end
end
