# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class TewoNigitteArukitai < Base
          include Singleton

          def initialize
            super
            @name = "手を握って歩きたい"
            @nicknames = []
            @arranger = "大久保薫"
            @youtube_links = []
            @itunes_links = [
              {
                :title => "プリーズ ミニスカ ポストウーマン!",
                :uri => "https://itunes.apple.com/jp/album/idid487505638",
              },
            ]
          end

          def cover?; true; end
        end
      end
    end
  end
end