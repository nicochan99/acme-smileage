# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class ThankYouCremeBruleeNoYuujou < Base
          include Singleton

          def initialize
            super
            @name = "サンキュ! クレームブリュレの友情"
            @lyric = "亜伊林"
            @nicknames = ["クレームブリュレ"]
            @arranger = "高橋諭一"
            @youtube_links = []
            @itunes_links = [
              {
                :title => "夢見る 15歳",
                :uri => "https://itunes.apple.com/jp/album/id372351545",
              },
            ]
          end
        end
      end
    end
  end
end
