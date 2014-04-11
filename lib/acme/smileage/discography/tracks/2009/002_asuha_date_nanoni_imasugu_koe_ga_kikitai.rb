# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class AsuhaDateNanoniImasuguKoeGaKikitai < Base
          include Singleton

          def initialize
            super
            @name = "あすはデートなのに、今すぐ声が聞きたい"
            @name_romaji = "asuha date nanoni imasugu koe ga kikitai"
            @nicknames = ["あすデー"]
            @arranger = "AKIRA"
            @lyric_links = {
              :utamap => "http://www.utamap.com/showkasi.php?surl=k-101208-050",
              :utanet => "http://www.uta-net.com/song/105943/",
            }
            @youtube_links = [
              {
                :title => "スマイレージ 「あすはデートなのに、今すぐ声が聞きたい」 (MV)",
                :uri => "https://www.youtube.com/watch?v=CYMW2EBjb8c",
              },
              {
                :title => "スマイレージ 「あすはデートなのに、今すぐ声が聞きたい」 (Dance Shot Ver.)",
                :uri => "https://www.youtube.com/watch?v=XD7dNcacyig",
              },
              {
                :title => "スマイレージ 「あすはデートなのに、今すぐ声が聞きたい」 (Close-up Ver.)",
                :uri => "https://www.youtube.com/watch?v=uMAvtxu0Sz8",
              },
            ]
            @itunes_links = [
              {
                :title => "あすはデートなのに、今すぐ声が聞きたい",
                :uri => "https://itunes.apple.com/jp/album/id348593533",
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
