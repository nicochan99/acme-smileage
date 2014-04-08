# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class BoogieTrain11 < Base
          include Singleton

          def initialize
            super
            @name = "ブギートレイン'11"
            @nicknames = ["ブギトレ"]
            @arranger = "大久保薫"
            @youtube_links = []
            @itunes_links = [
              {
                :title => "タチアガール",
                :uri => "https://itunes.apple.com/jp/album/id464722704",
              },
            ]
          end

          def cover?; true; end
        end
      end
    end
  end
end
