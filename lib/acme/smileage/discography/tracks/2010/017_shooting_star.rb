# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class ShootingStar < Base
          include Singleton

          def initialize
            super
            @name = "シューティング スター"
            @nicknames = []
            @arranger = "湯浅公一"
            @youtube_links = []
            @itunes_links = [
              {
                :title => "悪ガキッ①",
                :uri => "https://itunes.apple.com/jp/album/id403700742",
              },
            ]
          end
        end
      end
    end
  end
end
