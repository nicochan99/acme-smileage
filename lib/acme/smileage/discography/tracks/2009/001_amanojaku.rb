# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class Amanojaku < Base
          include Singleton

          def initialize
            super
            @name = "ぁまのじゃく"
            @nicknames = []
            @arranger = "藤澤慶昌"
            @lyric_links = {
              :utamap => "http://www.utamap.com/showkasi.php?surl=k-101208-051",
              :utanet => "http://www.uta-net.com/song/87905/",
            }
            @youtube_links = [
              {
                :title => "スマイレージ 「ぁまのじゃく」 (MV) ",
                :uri => "https://www.youtube.com/watch?v=RgbY4xM9O_s",
              },
              {
                :title => "スマイレージ 「ぁまのじゃく」 (Dance Shot Ver.)",
                :uri => "https://www.youtube.com/watch?v=j7cpA_ezn38",
              },
              {
                :title => "スマイレージ 「ぁまのじゃく」 (Close-up Ver.)",
                :uri => "https://www.youtube.com/watch?v=nCEkum9AtPo",
              },
            ]
            @itunes_links = [
              {
                :title => "ぁまのじゃく",
                :uri => "https://itunes.apple.com/jp/album/id348604062",
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
