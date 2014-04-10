# -*- encoding: utf-8 -*-

require "acme/smileage/discography/albums/base"

module Acme
  class Smileage
    class Discography
      module Albums
        class MysteryNight_EighteenEmotion < Base
          include Singleton

          def initialize
            @name = "ミステリーナイト!/エイティーン エモーション"
            @nicknames = ["ミスナイ", "エイエモ", "18エモ"]
            @release_date = Date.new(2014, 4, 30)
            @oricon = Sales.new(0, 0, 0, 0)
            @discography_link = "http://s-mileage.jp/discography/detail_00186/"
            @image_links = []

            track Acme::Smileage::Discography::Tracks::MysteryNight
            track Acme::Smileage::Discography::Tracks::EighteenEmotion
          end
        end
      end
    end
  end
end
