# -*- encoding: utf-8 -*-

require "acme/smileage/discography/albums/base"

module Acme
  class Smileage
    class Discography
      module Albums
        class Samuine < Base
          include Singleton

          def initialize
            @name = "寒いね。"
            @name_romaji = "samuine."
            @nicknames = []
            @release_date = Date.new(2012, 11, 28)
            @oricon = Sales.new(19308, 21120, 6, 3)
            @discography_link = "http://s-mileage.jp/discography/detail_00120/"
            @artwork_links = [
              {
                :title => "寒いね。 【通常盤】",
                :uri => "http://s-mileage.jp/discography/obj/img/000/120/121106-1858_01l.jpg",
              },
              {
                :title => "寒いね。 【初回生産限定盤A】",
                :uri => "http://s-mileage.jp/discography/obj/img/000/120/121106-1858_02l.jpg",
              },
              {
                :title => "寒いね。 【初回生産限定盤B】",
                :uri => "http://s-mileage.jp/discography/obj/img/000/120/121106-1858_03l.jpg",
              },
              {
                :title => "寒いね。 【初回生産限定盤C】",
                :uri => "http://s-mileage.jp/discography/obj/img/000/120/121106-1858_04l.jpg",
              },
              {
                :title => "寒いね。 【初回生産限定盤D】",
                :uri => "http://s-mileage.jp/discography/obj/img/000/120/121106-1858_05l.jpg",
              },
            ]

            track Acme::Smileage::Discography::Tracks::Samuine
            track Acme::Smileage::Discography::Tracks::WatashiChoitoKawaiiUrabancho
          end
        end
      end
    end
  end
end
