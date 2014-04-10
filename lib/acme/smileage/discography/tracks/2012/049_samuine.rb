# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class Samuine < Base
          include Singleton

          def initialize
            super
            @name = "寒いね。"
            @nicknames = []
            @arranger = "大久保薫"
            @lyric_links = {
              :utamap => "http://www.utamap.com/showkasi.php?surl=k-121128-150",
              :utanet => "http://www.uta-net.com/song/138712/",
            }
            @youtube_links = [
              {
                :title => "スマイレージ 「寒いね。」 (MV)",
                :uri => "https://www.youtube.com/watch?v=ZxFhVH2tNzc",
              },
              {
                :title => "スマイレージ 「寒いね。」 (Live Ver.)",
                :uri => "https://www.youtube.com/watch?v=VDFAXMSSt2o",
              },
            ]
            @itunes_links = [
              {
                :title => "寒いね。",
                :uri => "https://itunes.apple.com/jp/album/id576697867",
              },
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
