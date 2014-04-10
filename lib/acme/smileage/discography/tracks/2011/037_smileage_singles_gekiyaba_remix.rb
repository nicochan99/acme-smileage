# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class SmileageSinglesGekiyabaRemix < Base
          include Singleton

          def initialize
            super
            @name = "スマイレージ シングルス 激ヤバリミックス"
            @nicknames = []
            @arranger = "渡辺泰司"
            @lyric_links = {}
            @youtube_links = []
            @itunes_links = [
              {
                :title => "プリーズ ミニスカ ポストウーマン!",
                :uri => "https://itunes.apple.com/jp/album/idid487508467",
              },
            ]
          end

          def remix?; true; end
        end
      end
    end
  end
end
