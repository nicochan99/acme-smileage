# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class ChokottoLove < Base
          include Singleton

          def initialize
            super
            @name = "ちょこっとLOVE"
            @nicknames = ["ちょこラブ", "ちょこLOVE"]
            @arranger = "鈴木俊介"
            @youtube_links = []
            @itunes_links = [
              {
                :title => "同じ時給で働く友達の美人ママ",
                :uri => "https://itunes.apple.com/jp/album/id390851470",
              },
            ]
          end

          def cover?; true; end
        end
      end
    end
  end
end
