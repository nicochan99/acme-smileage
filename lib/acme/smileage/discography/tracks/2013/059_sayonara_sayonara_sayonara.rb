# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class SayonaraSayonaraSayonara < Base
          include Singleton

          def initialize
            super
            @name = "さよなら さよなら さよなら"
            @name_romaji = "sayonara sayonara sayonara"
            @nicknames = []
            @arranger = "AKIRA"
            @hpma = HelloProjectMusicAward.new(2013, 96, 20.0, 14)
            @lyric_links = {
              :utamap => "http://www.utamap.com/showkasi.php?surl=k-130522-195",
              :utanet => "http://www.uta-net.com/song/146542/",
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
