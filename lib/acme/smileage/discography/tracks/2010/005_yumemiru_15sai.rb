# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class Yumemiru15sai < Base
          include Singleton

          def initialize
            super
            @name = "夢見る 15歳"
            @nicknames = ["夢フィフ", "夢15"]
            @arranger = "平田祥一郎"
            @lyric_links = {
              :utamap => "http://www.utamap.com/showkasi.php?surl=k-100526-018",
              :utanet => "http://www.uta-net.com/song/95255/",
            }
            @youtube_links = [
              {
                :title => "スマイレージ 「夢見る 15歳」 (Another Ver.)",
                :uri => "https://www.youtube.com/watch?v=HxiooxmPidw",
              },
              {
                :title => "スマイレージ 「夢見る 15歳」 (Close-up Ver.)",
                :uri => "https://www.youtube.com/watch?v=urKPV7umEk4",
              },
              {
                :title => "スマイレージ 「夢見る 15歳」 (福田花音Close-up Ver.)",
                :uri => "https://www.youtube.com/watch?v=ijlF3JU-ZzM",
              },
              {
                :title => "スマイレージ 「夢見る 15歳」 (Dance Shot Ver.)",
                :uri => "https://www.youtube.com/watch?v=kMCl33hyiMo",
              },
              {
                :title => "スマイレージ 「夢見る 15歳」 (和田彩花Dance Shot Ver.)",
                :uri => "https://www.youtube.com/watch?v=7_kHfQCA5HA",
              },
              {
                :title => "スマイレージ 「夢見る 15歳」 (Web Mix Ver.)",
                :uri => "https://www.youtube.com/watch?v=lhMUIXridcw",
              },
              {
                :title => "スマイレージ 「夢見る 15歳」 (和田彩花Close-up Ver.)",
                :uri => "https://www.youtube.com/watch?v=3EAQBW1k_Z0",
              },
              {
                :title => "スマイレージ 「夢見る 15歳」 (Close-up Ver.)",
                :uri => "https://www.youtube.com/watch?v=IeumrUTz0-U",
              },
            ]
            @itunes_links = [
              {
                :title => "夢見る 15歳",
                :uri => "https://itunes.apple.com/jp/album/id372351545",
              },
              {
                :title => "悪ガキッ①",
                :uri => "https://itunes.apple.com/jp/album/id403700742",
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
