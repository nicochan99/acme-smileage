# -*- encoding: utf-8 -*-

require "acme/smileage/discography/albums/base"

module Acme
  class Smileage
    class Discography
      module Albums
        class Shortcut < Base
          include Singleton

          def initialize
            @name = "ショートカット"
            @nicknames = []
            @release_date = Date.new(2011, 2, 9)
            @oricon = Sales.new(20492, 22831, 5, 3)
            @discography_link = "http://s-mileage.jp/discography/detail_00059/"
            @image_links = [
              {
                :title => "ショートカット 【通常盤】",
                :uri => "http://s-mileage.jp/discography/obj/img/000/059/110113-1841_01l.jpg",
              },
              {
                :title => "ショートカット 【初回生産限定盤A】",
                :uri => "http://s-mileage.jp/discography/obj/img/000/059/110113-1841_02l.jpg",
              },
              {
                :title => "ショートカット 【初回生産限定盤B】",
                :uri => "http://s-mileage.jp/discography/obj/img/000/059/110113-1841_03l.jpg",
              },
              {
                :title => "ショートカット 【初回生産限定盤C】",
                :uri => "http://s-mileage.jp/discography/obj/img/000/059/110113-1841_04l.jpg",
              },
              {
                :title => "ショートカット 【初回生産限定盤D】",
                :uri => "http://s-mileage.jp/discography/obj/img/000/059/110113-1841_05l.jpg",
              },
            ]

            track Acme::Smileage::Discography::Tracks::Shortcut
            track Acme::Smileage::Discography::Tracks::PanyasanNoArbeit
            track Acme::Smileage::Discography::Tracks::OtomePastaNiKandou
          end
        end
      end
    end
  end
end
