# -*- encoding: utf-8 -*-

require "acme/smileage/discography/albums/base"

module Acme
  class Smileage
    class Discography
      module Albums
        class Yumemiru15saiPaxJaponicaGrooveRemix < Base
          include Singleton

          def initialize
            @name = "夢見る 15歳 (PAX JAPONICA GROOVE REMIX)"
            @nicknames = []
            @release_date = Date.new(2010, 6, 18)
            @discography_link = "http://s-mileage.jp/discography/detail_00032/"
            @image_links = [
              {
                :title => "夢見る 15歳 (PAX JAPONICA GROOVE REMIX)",
                :uri => "http://s-mileage.jp/discography/obj/img/000/032/100709-1334_01l.jpg",
              },
            ]

            track Acme::Smileage::Discography::Tracks::Yumemiru15saiPaxJaponicaGrooveRemix
          end

          def download_only?; true; end
        end
      end
    end
  end
end
