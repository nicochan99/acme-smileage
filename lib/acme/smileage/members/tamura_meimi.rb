# -*- encoding: utf-8 -*-

require "acme/smileage/members/base"

module Acme
  class Smileage
    module Members
      class TamuraMeimi < Base
        def initialize
          @family_name_ja = "田村"
          @first_name_ja = "芽実"
          @family_name_en = "Tamura"
          @first_name_en = "Meimi"
          @birthday = Date.new(1998, 10, 30)
          @blood_type = "O"
          @hometown = "群馬"
          @emoticon = "ﾒｲ´‘ ｗ‘）"
          @nick = "めいめい"
          @color = "Green"
          @generation = 2
          @join_date = Date.new(2011, 8, 14)
          @graduate_date = nil
          @blog_url = "http://ameblo.jp/smileage-submember/"
        end
      end
    end
  end
end
