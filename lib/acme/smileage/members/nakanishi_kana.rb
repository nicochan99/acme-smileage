# -*- encoding: utf-8 -*-

require "acme/smileage/members/base"

module Acme
  class Smileage
    module Members
      class NakanishiKana < Base
        def initialize
          @family_name_ja = "中西"
          @first_name_ja = "香菜"
          @family_name_en = "Nakanishi"
          @first_name_en = "Kana"
          @birthday = Date.new(1997, 6, 4)
          @blood_type = "A"
          @hometown = "大阪"
          @emoticon = "川*⌒ｖ⌒）"
          @nick = "かななん"
          @color = "Sky Blue"
          @generation = 2
          @join_date = Date.new(2011, 8, 14)
          @graduate_date = nil
          @blog_url = "http://ameblo.jp/smileage-submember/"
        end
      end
    end
  end
end
