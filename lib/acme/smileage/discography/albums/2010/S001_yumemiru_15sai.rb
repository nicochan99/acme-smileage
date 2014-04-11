# -*- encoding: utf-8 -*-

require "acme/smileage/discography/albums/base"

module Acme
  class Smileage
    class Discography
      module Albums
        class Yumemiru15sai < Base
          include Singleton

          def initialize
            @name = "夢見る 15歳"
            @name_romaji = "yumemiru 15sai"
            @nicknames = ["夢フィフ", "夢15"]
            @release_date = Date.new(2010, 5, 26)
            @oricon = Sales.new(20438, 24936, 5, 4)
            @discography_link = "http://s-mileage.jp/discography/detail_00009/"
            @artwork_links = [
              {
                :title => "夢見る 15歳 【通常盤】",
                :uri => "http://s-mileage.jp/discography/obj/img/000/009/100517-1512_01l.jpg",
              },
              {
                :title => "夢見る 15歳 【初回生産限定盤A】",
                :uri => "http://s-mileage.jp/discography/obj/img/000/009/100517-1512_02l.jpg",
              },
              {
                :title => "夢見る 15歳 【初回生産限定盤B】",
                :uri => "http://s-mileage.jp/discography/obj/img/000/009/100517-1512_03l.jpg",
              },
            ]

            track Acme::Smileage::Discography::Tracks::Yumemiru15sai
            track Acme::Smileage::Discography::Tracks::ThankYouCremeBruleeNoYuujou
          end
        end
      end
    end
  end
end
