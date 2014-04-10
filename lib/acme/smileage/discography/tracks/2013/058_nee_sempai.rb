# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class NeeSempai < Base
          include Singleton

          def initialize
            super
            @name = "ねぇ 先輩"
            @nicknames = []
            @arranger = "平田祥一郎"
            @lyric_links = {
              :utamap => "http://www.utamap.com/showkasi.php?surl=k-130522-194",
              :utanet => "http://www.uta-net.com/song/146543/",
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
