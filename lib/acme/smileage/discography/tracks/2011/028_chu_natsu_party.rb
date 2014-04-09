# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class ChuNatsuParty < Base
          include Singleton

          def initialize
            super
            @name = "チュッ!夏パ～ティ"
            @nicknames = ["夏パ"]
            @arranger = "大久保薫"
            @youtube_links = []
            @itunes_links = [
              {
                :title => "有頂天LOVE",
                :uri => "https://itunes.apple.com/jp/album/id449821345",
              },
            ]
          end

          def cover?; true; end
        end
      end
    end
  end
end