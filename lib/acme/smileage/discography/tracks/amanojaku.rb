# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class Amanojaku < Base
          include Singleton

          def initialize
            super
            @name = "ぁまのじゃく"
            @nicknames = ["あまのじゃく", "天邪鬼"]
            @arranger = nil
            @youtube_links = {
              :mv => "",
              :dancheshot => "",
            }
            @itunes_link = nil
            @jacket_link = nil
          end
        end
      end
    end
  end
end
