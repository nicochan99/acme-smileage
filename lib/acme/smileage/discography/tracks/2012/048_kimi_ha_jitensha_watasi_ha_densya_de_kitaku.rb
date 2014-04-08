# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class KimiHaJitenshaWatasiHaDensyaDeKitaku < Base
          include Singleton

          def initialize
            super
            @name = "君は自転車 私は電車で帰宅"
            @nicknames = ["君チャリ"]
            @arranger = "山崎淳"
            @youtube_links = []
            @itunes_links = [
              {
                :title => "好きよ、純情反抗期。",
                :uri => "https://itunes.apple.com/jp/album/id549806077",
              },
            ]
          end

          def cover?; true; end
        end
      end
    end
  end
end
