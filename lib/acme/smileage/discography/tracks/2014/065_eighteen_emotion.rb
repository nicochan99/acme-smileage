# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class EighteenEmotion < Base
          include Singleton

          def initialize
            super
            @name = "エイティーン エモーション"
            @nicknames = ["エイエモ", "18エモ"]
            @arranger = ""
            @lyric_links = {
              :utamap => "",
              :utanet => "",
            }
            @youtube_links = [
              {
                :title => "スマイレージ『エイティーン エモーション』 (S/mileage[Eighteen Emotion]) (Promotion edit)",
                :uri => "https://www.youtube.com/watch?v=fAPI8PW2q-A",
              },
            ]
            @itunes_links = []
          end
        end
      end
    end
  end
end
