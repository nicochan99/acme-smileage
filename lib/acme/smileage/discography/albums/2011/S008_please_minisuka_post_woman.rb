# -*- encoding: utf-8 -*-

require "acme/smileage/discography/albums/base"

module Acme
  class Smileage
    class Discography
      module Albums
        class PleaseMinisukaPostWoman < Base
          include Singleton

          def initialize
            @name = "プリーズ ミニスカ ポストウーマン！"
            @nicknames = ["PMPW"]
            @release_date = Date.new(2011, 12, 28)
            @oricon = Sales.new(34132, 36513, 5, 4)
            @discography_link = "http://s-mileage.jp/discography/detail_00091/"
            @artwork_links = [
              {
                :title => "プリーズ ミニスカ ポストウーマン！ 【通常盤】",
                :uri => "http://s-mileage.jp/discography/obj/img/000/091/111205-1231_01l.jpg",
              },
              {
                :title => "プリーズ ミニスカ ポストウーマン！ 【初回生産限定盤A】",
                :uri => "http://s-mileage.jp/discography/obj/img/000/091/111205-1231_02l.jpg",
              },
              {
                :title => "プリーズ ミニスカ ポストウーマン！ 【初回生産限定盤B】",
                :uri => "http://s-mileage.jp/discography/obj/img/000/091/111205-1231_03l.jpg",
              },
              {
                :title => "プリーズ ミニスカ ポストウーマン！ 【初回生産限定盤C】",
                :uri => "http://s-mileage.jp/discography/obj/img/000/091/111205-1231_04l.jpg",
              },
              {
                :title => "プリーズ ミニスカ ポストウーマン！ 【初回生産限定盤D】",
                :uri => "http://s-mileage.jp/discography/obj/img/000/091/111205-1231_05l.jpg",
              },
            ]

            track Acme::Smileage::Discography::Tracks::PleaseMinisukaPostWoman
            track Acme::Smileage::Discography::Tracks::KonnichiwaKonbanwa
            track Acme::Smileage::Discography::Tracks::SmileageSinglesGekiyabaRemix
            track Acme::Smileage::Discography::Tracks::TewoNigitteArukitai
          end
        end
      end
    end
  end
end
