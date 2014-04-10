# -*- encoding: utf-8 -*-

require "acme/smileage/discography/albums/base"

module Acme
  class Smileage
    class Discography
      module Albums
        class UchoutenLoverocketmanMix < Base
          include Singleton

          def initialize
            @name = "有頂天LOVE ～rocketman mix～"
            @nicknames = []
            @release_date = Date.new(2011, 8, 18)
            @discography_link = "http://s-mileage.jp/discography/detail_00081/"
            @image_links = [
              {
                :title => "有頂天LOVE ～rocketman mix～",
                :uri => "http://s-mileage.jp/discography/obj/img/000/081/110823-1838_01l.jpg",
              },
            ]

            track Acme::Smileage::Discography::Tracks::UchoutenLoverocketmanMix
          end

          def download_only?; true; end
        end
      end
    end
  end
end
