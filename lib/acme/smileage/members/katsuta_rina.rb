# -*- encoding: utf-8 -*-

require "acme/smileage/members/base"

module Acme
  class Smileage
    module Members
      class KatsutaRina < Base
        def initialize
          @first_name_ja = "勝田"
          @family_name_ja = "里奈"
          @first_name_en = "Katsuta"
          @family_name_en = "Rina"
          @birthday = Date.new(1998, 4, 6)
          @blood_type = "A"
          @hometown = "東京"
          @emoticon = nil
          @nick = "りなぷ～"
          @color = "Yellow"
          @join_date = Date.new(2011, 10, 16)
          @graduate_date = nil
        end
      end
    end
  end
end
