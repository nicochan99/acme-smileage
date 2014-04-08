# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class ChotoMateKudasai < Base
          include Singleton

          def initialize
            super
            @name = "チョトマテクダサイ!"
            @nicknames = ["チョトマテ"]
            @arranger = "平田祥一郎"
            @youtube_links = []
            @itunes_links = [
              {
                :title => "チョトマテクダサイ!",
                :uri => "https://itunes.apple.com/jp/album/id496149565",
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
