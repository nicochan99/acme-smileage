# -*- encoding: utf-8 -*-

require "acme/smileage/discography/albums/base"

module Acme
  class Smileage
    class Discography
      module Albums
        class MysteryNight_EighteenEmotion < Base
          include Singleton

          def initialize
            @name = "ミステリーナイト！／エイティーン エモーション"
            @nicknames = ["ミスナイ", "エイエモ", "18エモ"]
            @release_date = Date.new(2014, 4, 30)
            @oricon = Sales.new(0, 0, 0, 0)
            @discography_link = "http://s-mileage.jp/discography/detail_00186/"
            @image_links = [
              {
                :title => "ミステリーナイト！／エイティーン エモーション 【通常盤A】",
                :uri => "http://s-mileage.jp/discography/obj/img/000/186/140409-1814_01l.jpg",
              },
              {
                :title => "ミステリーナイト！／エイティーン エモーション 【初回生産限定盤A】",
                :uri => "http://s-mileage.jp/discography/obj/img/000/186/140409-1814_02l.jpg",
              },
              {
                :title => "ミステリーナイト！／エイティーン エモーション 【初回生産限定盤B】",
                :uri => "http://s-mileage.jp/discography/obj/img/000/186/140409-1814_03l.jpg",
              },
              {
                :title => "ミステリーナイト！／エイティーン エモーション 【初回生産限定盤C】",
                :uri => "http://s-mileage.jp/discography/obj/img/000/186/140409-1814_04l.jpg",
              },
              {
                :title => "ミステリーナイト！／エイティーン エモーション 【通常盤B】",
                :uri => "http://s-mileage.jp/discography/obj/img/000/186/140409-1814_05l.jpg",
              },
            ]

            track Acme::Smileage::Discography::Tracks::MysteryNight
            track Acme::Smileage::Discography::Tracks::EighteenEmotion
          end
        end
      end
    end
  end
end
