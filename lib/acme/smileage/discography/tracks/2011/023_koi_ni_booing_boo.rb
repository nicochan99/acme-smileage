# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class KoiNiBooingBoo < Base
          include Singleton

          def initialize
            super
            @name = "恋にBooing ブー!"
            @nicknames = ["恋ブー"]
            @arranger = "山崎淳"
            @youtube_links = []
            @itunes_links = [
              {
                :title => "恋にBooing ブー!",
                :uri => "https://itunes.apple.com/jp/album/id429866286",
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