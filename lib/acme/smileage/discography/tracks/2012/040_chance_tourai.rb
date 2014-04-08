# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class ChanceTourai < Base
          include Singleton

          def initialize
            super
            @name = "チャンス到来!"
            @nicknames = []
            @arranger = "板垣祐介"
            @youtube_links = []
            @itunes_links = [
              {
                :title => "チョトマテクダサイ!",
                :uri => "https://itunes.apple.com/jp/album/id496149565",
              },
            ]
          end
        end
      end
    end
  end
end
