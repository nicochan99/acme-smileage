# -*- encoding: utf-8 -*-

require "acme/smileage/members/base"

module Acme
  class Smileage
    module Members
      class KosugaFuyuka < Base
        def initialize
          @family_name_ja = "小数賀"
          @first_name_ja = "芙由香"
          @family_name_en = "Kosuga"
          @first_name_en = "Fuyuka"
          @birthday = Date.new(1997, 11, 19)
          @blood_type = "O"
          @hometown = "神奈川"
          @emoticon = "从´’_l ’从"
          @nick = "ふ～ちゃん"
          @color = "Orange"
          @generation = 2
          @join_date = Date.new(2011, 8, 14)
          @graduate_date = Date.new(2011, 9, 9)
          @blog_url = nil
        end
      end
    end
  end
end
