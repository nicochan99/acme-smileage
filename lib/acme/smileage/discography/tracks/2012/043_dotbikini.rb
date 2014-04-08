# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class Dotbikini < Base
          include Singleton

          def initialize
            super
            @name = "ドットビキニ"
            @nicknames = []
            @arranger = "大久保薫"
            @youtube_links = [
              {
                :title => "スマイレージ 『ドットビキニ』 (MV)",
                :uri => "https://www.youtube.com/watch?v=uhUFrJSDqrU",
              },
            ]
            @itunes_links = [
              {
                :title => "ドットビキニ",
                :uri => "https://itunes.apple.com/jp/album/id518280736",
              },
              {
                :title => "スマイレージ ベストアルバム完全版①",
                :uri => "https://itunes.apple.com/jp/album/id528168545",
              },
            ]
          end
        end
      end
    end
  end
end
