# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class KiiroiJitenshaToSandwich < Base
          include Singleton

          def initialize
            super
            @name = "黄色い自転車とサンドウィッチ"
            @nicknames = ["黄色い自転車"]
            @arranger = "オオバコウスケ"
            @youtube_links = []
            @itunes_links = [
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