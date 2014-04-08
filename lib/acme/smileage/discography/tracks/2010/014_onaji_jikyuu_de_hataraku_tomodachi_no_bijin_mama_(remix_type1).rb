# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class OnajiJikyuuDeHatarakuTomodachiNoBijinMamaRemixType1 < Base
          include Singleton

          def initialize
            super
            @name = "同じ時給で働く友達の美人ママ (Remix Type1)"
            @nicknames = []
            @arranger = "山崎淳"
            @youtube_links = []
            @itunes_links = [
              {
                :title => "同じ時給で働く友達の美人ママ(Remix Type1)",
                :uri => "https://itunes.apple.com/jp/album/id401615685",
              },
            ]
          end

          def remix?; true; end
        end
      end
    end
  end
end
