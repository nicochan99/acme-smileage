# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class ShortcutRemixver < Base
          include Singleton

          def initialize
            super
            @name = "ショートカット (Remix.Ver)"
            @nicknames = []
            @arranger = "平田祥一郎"
            @youtube_links = []
            @itunes_links = [
              {
                :title => "ショートカット (Remix.Ver)",
                :uri => "https://itunes.apple.com/jp/album/id457769698",
              },
            ]
          end

          def remix?; true; end
        end
      end
    end
  end
end
