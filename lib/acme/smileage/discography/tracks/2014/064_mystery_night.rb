# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class MysteryNight < Base
          include Singleton

          def initialize
            super
            @name = "ミステリーナイト！"
            @nicknames = ["ミスナイ"]
            @arranger = ""
            @lyric_links = {
              :utamap => "",
              :utanet => "",
            }
            @youtube_links = []
            @itunes_links = [
              {
                :title => "ミステリーナイト!/エイティーン エモーション",
                :uri => "",
              },
            ]
          end
        end
      end
    end
  end
end
