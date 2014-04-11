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
            @name_romaji = "mystery night!"
            @nicknames = ["ミスナイ"]
            @arranger = ""
            @lyric_links = {
              :utamap => "",
              :utanet => "",
            }
            @youtube_links = [
              {
                :title => "スマイレージ 『ミステリーナイト！』 (S/mileage[A Mistery Night!]) (Promotion edit)",
                :uri => "https://www.youtube.com/watch?v=gh6-f1EV_14",
              },
            ]
            @itunes_links = []
          end
        end
      end
    end
  end
end
