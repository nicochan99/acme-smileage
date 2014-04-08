# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class SayonaraSayonaraSayonara < Base
          include Singleton

          def initialize
            super
            @name = "さよなら さよなら さよなら"
            @nicknames = []
            @arranger = "AKIRA"
            @youtube_links = []
            @itunes_links = [
              {
                :title => "②スマイルセンセーション",
                :uri => "https://itunes.apple.com/jp/album/id643254704",
              },
            ]
          end
        end
      end
    end
  end
end
