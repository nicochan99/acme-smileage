# -*- encoding: utf-8 -*-

require "acme/smileage/discography/albums/base"

module Acme
  class Smileage
    class Discography
      module Albums
        class Dotbikini < Base
          include Singleton

          def initialize
            @name = "ドットビキニ"
            @nicknames = []
            @release_date = Date.new(2012, 5, 2)
            @oricon = Sales.new(20043, 22133, 6, 3)
            @image_links = [
              {
                :title => "ドットビキニ 【通常盤】",
                :uri => "http://s-mileage.jp/discography/obj/img/000/109/120405-2112_01l.jpg",
              },
              {
                :title => "ドットビキニ 【初回生産限定盤A】",
                :uri => "http://s-mileage.jp/discography/obj/img/000/109/120405-2112_02l.jpg",
              },
              {
                :title => "ドットビキニ 【初回生産限定盤B】",
                :uri => "http://s-mileage.jp/discography/obj/img/000/109/120405-2112_03l.jpg",
              },
              {
                :title => "ドットビキニ 【初回生産限定盤C】",
                :uri => "http://s-mileage.jp/discography/obj/img/000/109/120405-2112_04l.jpg",
              },
              {
                :title => "ドットビキニ 【初回生産限定盤D】",
                :uri => "http://s-mileage.jp/discography/obj/img/000/109/120405-2112_05l.jpg",
              },
            ]

            track Acme::Smileage::Discography::Tracks::Dotbikini
            track Acme::Smileage::Discography::Tracks::SmileBlues
            track Acme::Smileage::Discography::Tracks::KoibitoHaKokoroNoOuendan
          end
        end
      end
    end
  end
end
