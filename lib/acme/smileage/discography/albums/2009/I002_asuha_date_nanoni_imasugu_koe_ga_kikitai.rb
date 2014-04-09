# -*- encoding: utf-8 -*-

require "acme/smileage/discography/albums/base"

module Acme
  class Smileage
    class Discography
      module Albums
        class AsuhaDateNanoniImasuguKoeGaKikitai < Base
          include Singleton

          def initialize
            @name = "あすはデートなのに、今すぐ声が聞きたい"
            @nicknames = ["あすデー"]
            @release_date = Date.new(2009, 9, 23)
            @oricon = Sales.new(0, 0, 0, 0)
            @image_links = [
              {
                :title => "あすはデートなのに、今すぐ声が聞きたい",
                :uri => "http://s-mileage.jp/discography/obj/img/000/005/100922-1211_01l.jpg",
              },
            ]

            track Acme::Smileage::Discography::Tracks::AsuhaDateNanoniImasuguKoeGaKikitai
          end

          def indies?; true; end
        end
      end
    end
  end
end