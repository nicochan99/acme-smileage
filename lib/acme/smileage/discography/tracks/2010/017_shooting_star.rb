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
            @lyric_links = {
              :utamap => "",
              :utanet => "http://www.uta-net.com/song/105947/",
            }
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
