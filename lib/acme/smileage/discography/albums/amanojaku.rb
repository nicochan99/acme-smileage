# -*- encoding: utf-8 -*-

require "date"

require "acme/smileage/discography/sales"
require "acme/smileage/discography/albums/base"

module Acme
  class Smileage
    class Discography
      module Albums
        class Amanojaku < Base
          def initialize
            @name = "ぁまのじゃく"
            @release_date = Date.new(2011, 3, 1)
            @oricon = Sales.new(:oricon, 23222, 25333, 3)

            track ::Acme::Smileage::Discography::Tracks::Amanojaku.instance
          end
        end
      end
    end
  end
end
