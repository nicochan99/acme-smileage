# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class Tachiagirl < Base
          include Singleton

          def initialize
            super
            @name = "タチアガール"
            @nicknames = []
            @arranger = "平田祥一郎"
            @youtube_links = [
              {
                :title => "スマイレージ 『タチアガール』 (MV)",
                :uri => "https://www.youtube.com/watch?v=LN9mG9oqqfc",
              },
              {
                :title => "スマイレージ 『タチアガール』 (Close-up Ver.)",
                :uri => "https://www.youtube.com/watch?v=yo73sdVef4Q",
              },
              {
                :title => "スマイレージ 『タチアガール』 (DanceShot Ver.)",
                :uri => "https://www.youtube.com/watch?v=Uk_0ysc_ed0",
              },
              {
                :title => "スマイレージ 『タチアガール』 (悪ガキッ Ver.)",
                :uri => "https://www.youtube.com/watch?v=GlMvlqZ_MFE",
              },
              {
                :title => "スマイレージ 『タチアガール』 (1期メンバー Ver.)",
                :uri => "https://www.youtube.com/watch?v=B0Nalrrru68",
              },
              {
                :title => "スマイレージ 『タチアガール』 (和田彩花 Close-up Ver.)",
                :uri => "https://www.youtube.com/watch?v=x89lMPI3BRY",
              },
              {
                :title => "スマイレージ 『タチアガール』 (福田花音Close-up Ver.)",
                :uri => "https://www.youtube.com/watch?v=qTgmUBpH8SY",
              },
              {
                :title => "スマイレージ 『タチアガール』 (サブメンVer.)",
                :uri => "https://www.youtube.com/watch?v=tITHkHXQWvU",
              },
            ]
            @itunes_links = [
              {
                :title => "タチアガール",
                :uri => "https://itunes.apple.com/jp/album/id464722574",
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
