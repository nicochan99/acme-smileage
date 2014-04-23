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
            @name_romaji = "smileage singles gekiatsu remix"
            @nicknames = []
            @duration = 315 # 05:15
            @arrangers = ["大久保薫"]
            @hpma = HelloProjectMusicAward.new(2012, 166, 0.5, 1)
            @lyric_links = {}
            @youtube_links = []
            @itunes_links = [
              {
                :title => "チョトマテクダサイ！",
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
