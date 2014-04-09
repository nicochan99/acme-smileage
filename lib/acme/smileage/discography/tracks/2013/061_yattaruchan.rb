# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class Yattaruchan < Base
          include Singleton

          def initialize
            super
            @name = "ヤッタルチャン"
            @nicknames = ["ヤッタル"]
            @arranger = "大久保薫"
            @youtube_links = [
              {
                :title => "スマイレージ 『ヤッタルチャン』(S/mileage[Yattaruchan]) (MV)",
                :uri => "https://www.youtube.com/watch?v=emiJ1iGih6U",
              },
              {
                :title => "スマイレージ 『ヤッタルチャン』(S/mileage[Yattaruchan]) (Dance Shot Ver.)",
                :uri => "https://www.youtube.com/watch?v=fwpjnUSvyKk",
              },
            ]
            @itunes_links = [
              {
                :title => "新しい私になれ!/ヤッタルチャン",
                :uri => "https://itunes.apple.com/jp/album/id663131682",
              },
            ]
          end
        end
      end
    end
  end
end