# -*- encoding: utf-8 -*-

require "acme/smileage/members/base"

module Acme
  class Smileage
    module Members
      class MaedaYuuka < Base
        def initialize
          @first_name_ja = "前田"
          @family_name_ja = "憂佳"
          @first_name_en = "Maeda"
          @family_name_en = "Yuuka"
          @birthday = Date.new(1994, 12, 24)
          @blood_type = "B"
          @hometown = "千葉"
          @emoticon = ""
          @nick = "ゆうかりん"
          @color = "Pink"
          @join_date = Date.new(2009, 4, 4)
          @graduate_date = Date.new(2011, 12, 31)
        end
      end
    end
  end
end
