# -*- encoding: utf-8 -*-

require "acme/smileage/discography/albums/base"

module Acme
  class Smileage
    class Discography
      module Albums
        class Sukichan < Base
          include Singleton

          def initialize
            @name = "スキちゃん"
            @nicknames = []
            @release_date = Date.new(2009, 11, 23)
            @oricon = Sales.new(399, 399, 159, 1)
            @discography_link = "http://s-mileage.jp/discography/detail_00001/"
            @image_links = [
              {
                :title => "スキちゃん",
                :uri => "http://s-mileage.jp/discography/obj/img/000/001/100922-1207_01l.jpg",
              },
            ]

            track Acme::Smileage::Discography::Tracks::Sukichan
          end

          def indies?; true; end
        end
      end
    end
  end
end
