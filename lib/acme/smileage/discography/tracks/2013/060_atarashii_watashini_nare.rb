# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class AtarashiiWatashiniNare < Base
          include Singleton

          def initialize
            super
            @name = "新しい私になれ！"
            @nicknames = ["あたわた"]
            @arranger = "江上浩太郎"
            @lyric_links = {
              :utamap => "http://www.utamap.com/showkasi.php?surl=k-130703-250",
              :utanet => "http://www.uta-net.com/song/148900/",
            }
            @youtube_links = [
              {
                :title => "スマイレージ 『新しい私になれ！』(S/mileage[Be the new me!]) (MV)",
                :uri => "https://www.youtube.com/watch?v=yCttQlnRcOU",
              },
              {
                :title => "スマイレージ 『新しい私になれ！』(S/mileage[Be the new me!]) (Dance Shot Ver.)",
                :uri => "https://www.youtube.com/watch?v=vgyLXQr49BA",
              },
            ]
            @itunes_links = [
              {
                :title => "新しい私になれ！／ヤッタルチャン",
                :uri => "https://itunes.apple.com/jp/album/id663131682",
              },
            ]
          end
        end
      end
    end
  end
end
