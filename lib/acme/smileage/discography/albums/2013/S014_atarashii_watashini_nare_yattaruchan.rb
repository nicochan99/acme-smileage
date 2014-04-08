# -*- encoding: utf-8 -*-

require "acme/smileage/discography/albums/base"

module Acme
  class Smileage
    class Discography
      module Albums
        class AtarashiiWatashiniNare_Yattaruchan < Base
          include Singleton

          def initialize
            @name = "新しい私になれ!/ヤッタルチャン"
            @nicknames = ["あたわた", "ヤッタル"]
            @release_date = Date.new(2013, 7, 3)
            @oricon = Sales.new(26573, 27935, 4, 3)
            @image_links = [
              {
                :title => "新しい私になれ!/ヤッタルチャン 【通常盤】",
                :uri => "http://s-mileage.jp/discography/obj/img/000/149/130613-1235_01l.jpg",
              },
              {
                :title => "新しい私になれ!/ヤッタルチャン 【初回生産限定盤A】",
                :uri => "http://s-mileage.jp/discography/obj/img/000/149/130613-1235_02l.jpg",
              },
              {
                :title => "新しい私になれ!/ヤッタルチャン 【初回生産限定盤B】",
                :uri => "http://s-mileage.jp/discography/obj/img/000/149/130613-1235_03l.jpg",
              },
              {
                :title => "新しい私になれ!/ヤッタルチャン 【初回生産限定盤C】",
                :uri => "http://s-mileage.jp/discography/obj/img/000/149/130613-1235_04l.jpg",
              },
              {
                :title => "新しい私になれ!/ヤッタルチャン 【初回生産限定盤D】",
                :uri => "http://s-mileage.jp/discography/obj/img/000/149/130613-1235_05l.jpg",
              },
            ]

            track Acme::Smileage::Discography::Tracks::AtarashiiWatashiniNare
            track Acme::Smileage::Discography::Tracks::Yattaruchan
          end
        end
      end
    end
  end
end
