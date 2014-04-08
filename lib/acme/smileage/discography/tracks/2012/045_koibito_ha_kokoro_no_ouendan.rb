# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class KoibitoHaKokoroNoOuendan < Base
          include Singleton

          def initialize
            super
            @name = "恋人は心の応援団"
            @nicknames = []
            @arranger = "板垣祐介"
            @youtube_links = []
            @itunes_links = [
              {
                :title => "ドットビキニ",
                :uri => "https://itunes.apple.com/jp/album/id518280736",
              },
            ]
          end

          def cover?; true; end
        end
      end
    end
  end
end
