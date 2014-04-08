# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class YuugureKoiNoJikan < Base
          include Singleton

          def initialize
            super
            @name = "夕暮れ 恋の時間"
            @nicknames = ["夕暮れ"]
            @arranger = "板垣祐介"
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
