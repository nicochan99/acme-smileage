# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class Odorouyo < Base
          include Singleton

          def initialize
            super
            @name = "踊ろうよ"
            @nicknames = []
            @arranger = "藤澤慶昌"
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
