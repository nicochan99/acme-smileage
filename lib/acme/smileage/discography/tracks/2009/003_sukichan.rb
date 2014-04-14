# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class Sukichan < Base
          include Singleton

          def initialize
            super
            @name = "スキちゃん"
            @name_romaji = "sukichan"
            @nicknames = []
            @arrangers = ["板垣祐介"]
            @hpma = HelloProjectMusicAward.new(2009, 51, 41.0, 19)
            @lyric_links = {
              :utamap => "http://www.utamap.com/showkasi.php?surl=k-101208-047",
              :utanet => "http://www.uta-net.com/song/105946/",
            }
            @youtube_links = [
              {
                :title => "スマイレージ 「スキちゃん」 (MV)",
                :uri => "https://www.youtube.com/watch?v=TuTO6edKwLU",
              },
              {
                :title => "スマイレージ 「スキちゃん」 (Dance Shot Ver.)",
                :uri => "https://www.youtube.com/watch?v=YzotAomnYa0",
              },
              {
                :title => "スマイレージ 「スキちゃん」 (Close-up Ver.)",
                :uri => "https://www.youtube.com/watch?v=EHAp-v83Ulo",
              },
            ]
            @itunes_links = [
              {
                :title => "スキちゃん",
                :uri => "https://itunes.apple.com/jp/album/id349411000",
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
