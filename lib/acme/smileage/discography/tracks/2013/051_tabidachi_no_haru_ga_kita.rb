# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class TabidachiNoHaruGaKita < Base
          include Singleton

          def initialize
            super
            @name = "旅立ちの春が来た"
            @nicknames = ["旅春"]
            @arranger = "大久保薫"
            @youtube_links = [
              {
                :title => "スマイレージ 「旅立ちの春が来た」 (MV)",
                :uri => "https://www.youtube.com/watch?v=Xe1IOiDlwtc",
              },
            ]
            @itunes_links = [
              {
                :title => "旅立ちの春が来た",
                :uri => "https://itunes.apple.com/jp/album/id611090467",
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
