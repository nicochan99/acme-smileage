# -*- encoding: utf-8 -*-

require "acme/smileage/discography/albums/base"

module Acme
  class Smileage
    class Discography
      module Albums
        class ShortcutRemixver < Base
          include Singleton

          def initialize
            @name = "ショートカット (Remix.Ver)"
            @nicknames = []
            @release_date = Date.new(2011, 8, 18)
            @discography_link = "http://s-mileage.jp/discography/detail_00082/"
            @image_links = [
              {
                :title => "ショートカット (Remix.Ver)",
                :uri => "http://s-mileage.jp/discography/obj/img/000/082/110823-1839_01l.jpg",
              },
            ]

            track Acme::Smileage::Discography::Tracks::ShortcutRemixver
          end

          def download_only?; true; end
        end
      end
    end
  end
end
