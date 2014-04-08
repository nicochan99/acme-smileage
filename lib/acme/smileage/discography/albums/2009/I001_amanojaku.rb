# -*- encoding: utf-8 -*-

require "acme/smileage/discography/albums/base"

module Acme
  class Smileage
    class Discography
      module Albums
        class Amanojaku < Base
          include Singleton

          def initialize
            @name = "ぁまのじゃく"
            @nicknames = []
            @release_date = Date.new(2009, 6, 7)
            @oricon = Sales.new(0, 0, 0, 0)
            @image_links = [
              {
                :title => "ぁまのじゃく",
                :uri => "http://s-mileage.jp/discography/obj/img/000/012/100922-1209_01l.jpg",
              },
            ]

            track Acme::Smileage::Discography::Tracks::Amanojaku
          end

          def indies?; true; end
        end
      end
    end
  end
end
