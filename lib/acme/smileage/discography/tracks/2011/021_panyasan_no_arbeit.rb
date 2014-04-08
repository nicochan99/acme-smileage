# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class PanyasanNoArbeit < Base
          include Singleton

          def initialize
            super
            @name = "パン屋さんのアルバイト"
            @nicknames = ["パン屋"]
            @arranger = "鈴木俊介"
            @youtube_links = []
            @itunes_links = [
              {
                :title => "ショートカット",
                :uri => "https://itunes.apple.com/jp/album/id417219096",
              },
            ]
          end
        end
      end
    end
  end
end
