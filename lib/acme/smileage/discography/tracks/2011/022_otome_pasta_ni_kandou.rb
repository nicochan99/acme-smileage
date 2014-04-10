# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class OtomePastaNiKandou < Base
          include Singleton

          def initialize
            super
            @name = "乙女パスタに感動"
            @nicknames = ["乙パス"]
            @arranger = "板垣祐介"
            @lyric_links = {
              :utamap => "http://www.utamap.com/showkasi.php?surl=k-110209-013",
              :utanet => "http://www.uta-net.com/song/108523/",
            }
            @youtube_links = []
            @itunes_links = [
              {
                :title => "ショートカット",
                :uri => "https://itunes.apple.com/jp/album/id417218984",
              },
            ]
          end

          def cover?; true; end
        end
      end
    end
  end
end
