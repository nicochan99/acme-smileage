# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class HatukoiNoAnatahe < Base
          include Singleton

          def initialize
            super
            @name = "初恋の貴方へ"
            @nicknames = []
            @arranger = "板垣祐介"
            @youtube_links = []
            @itunes_links = [
              {
                :title => "恋にBooing ブー!",
                :uri => "",
              },
            ]
          end
        end
      end
    end
  end
end