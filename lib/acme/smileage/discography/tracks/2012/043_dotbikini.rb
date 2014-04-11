# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class Dotbikini < Base
          include Singleton

          def initialize
            super
            @name = "ドットビキニ"
            @name_romaji = "dotbikini"
            @nicknames = []
            @arranger = "大久保薫"
            @lyric_links = {
              :utamap => "http://www.utamap.com/showkasi.php?surl=k-120502-081",
              :utanet => "http://www.uta-net.com/song/129102/",
            }
            @youtube_links = [
              {
                :title => "スマイレージ 『ドットビキニ』 (MV)",
                :uri => "https://www.youtube.com/watch?v=uhUFrJSDqrU",
              },
            ]
            @itunes_links = [
              {
                :title => "ドットビキニ",
                :uri => "https://itunes.apple.com/jp/album/id518280736",
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
