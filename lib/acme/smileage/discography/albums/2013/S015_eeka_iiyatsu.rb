# -*- encoding: utf-8 -*-

require "acme/smileage/discography/albums/base"

module Acme
  class Smileage
    class Discography
      module Albums
        class Eeka_Iiyatsu < Base
          include Singleton

          def initialize
            @name = "ええか!?/「良い奴」"
            @nicknames = []
            @release_date = Date.new(2013, 12, 18)
            @oricon = Sales.new(33320, 37141, 3, 6)
            @discography_link = "http://s-mileage.jp/discography/detail_00175/"
            @image_links = [
              {
                :title => "ええか!?/「良い奴」 【通常盤】",
                :uri => "http://s-mileage.jp/discography/obj/img/000/175/131127-1520_01l.jpg",
              },
              {
                :title => "ええか!?/「良い奴」 【初回生産限定盤A】",
                :uri => "http://s-mileage.jp/discography/obj/img/000/175/131127-1520_02l.jpg",
              },
              {
                :title => "ええか!?/「良い奴」 【初回生産限定盤B】",
                :uri => "http://s-mileage.jp/discography/obj/img/000/175/131127-1520_03l.jpg",
              },
              {
                :title => "ええか!?/「良い奴」 【初回生産限定盤C】",
                :uri => "http://s-mileage.jp/discography/obj/img/000/175/131127-1520_04l.jpg",
              },
              {
                :title => "ええか!?/「良い奴」 【初回生産限定盤D】",
                :uri => "http://s-mileage.jp/discography/obj/img/000/175/131127-1520_05l.jpg",
              },
            ]

            track Acme::Smileage::Discography::Tracks::Eeka
            track Acme::Smileage::Discography::Tracks::Iiyatsu
          end
        end
      end
    end
  end
end
