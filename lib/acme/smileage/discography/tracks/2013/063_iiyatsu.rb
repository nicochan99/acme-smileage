# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class Iiyatsu < Base
          include Singleton

          def initialize
            super
            @name = "「良い奴」"
            @nicknames = []
            @arranger = "大久保薫"
            @youtube_links = [
              {
                :title => "スマイレージ 『「良い奴」』(S/mileage[Nice Guy]) (MV)",
                :uri => "https://www.youtube.com/watch?v=o3yVG8y6oIc",
              },
              {
                :title => "スマイレージ 『「良い奴」』(S/mileage[Nice Guy]) (Dance Shot Ver.)",
                :uri => "https://www.youtube.com/watch?v=xlD51e__7Pw",
              },
            ]
            @itunes_links = [
              {
                :title => "ええか!?/「良い奴」",
                :uri => "https://itunes.apple.com/jp/album/id772780890",
              },
            ]
          end
        end
      end
    end
  end
end
