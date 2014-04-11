# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class UchoutenLoverocketmanMix < Base
          include Singleton

          def initialize
            super
            @name = "有頂天LOVE ～rocketman mix～"
            @name_romaji = "uchouten love -rocketman mix-"
            @nicknames = []
            @arranger = "大久保薫"
            @lyric_links = {
              :utamap => "http://www.utamap.com/showkasi.php?surl=k-110810-160",
              :utanet => "http://www.uta-net.com/song/116848/",
            }
            @youtube_links = []
            @itunes_links = [
              {
                :title => "有頂天LOVE ～rocketman mix～",
                :uri => "https://itunes.apple.com/jp/album/id456864966",
              },
            ]
          end

          def remix?; true; end
        end
      end
    end
  end
end
