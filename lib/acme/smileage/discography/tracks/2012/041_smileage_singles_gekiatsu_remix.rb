# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class SmileageSinglesGekiatsuRemix < Base
          include Singleton

          def initialize
            super
            @name = "スマイレージ シングルス 激アツリミックス"
            @nicknames = []
            @arranger = "大久保薫"
            @youtube_links = []
            @itunes_links = [
              {
                :title => "チョトマテクダサイ!",
                :uri => "https://itunes.apple.com/jp/album/id496149923",
              },
            ]
          end

          def remix?; true; end
        end
      end
    end
  end
end
