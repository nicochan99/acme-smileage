# -*- encoding: utf-8 -*-

require "amatch"

module Acme
  class Smileage
    class Matcher
      attr_accessor :max_score

      def initialize(str)
        @str = str
        @max_score = 4
      end

      def match(targets)
        # 完全一致検索
        if r = targets.find {|e| e == @str }
          return r
        end

        nstr = normalize(@str)
        # 大文字小文字を無視して検索
        if r = targets.find {|e| normalize(e) == nstr }
          return r
        end

        # 大文字小文字を無視して前方一致検索 (最低でも 2 文字は必要)
        if nstr.length > 1 and r = targets.find {|e| normalize(e).start_with?(nstr) }
          return r
        end

        # 編集距離であいまい検索
        matcher = Amatch::Sellers.new(@str)
        if r = targets.map {|e| [e, matcher.match(e)] }.sort_by {|e| e[1] }[0]
          return r[0] if r[1] < self.max_score # score があまりにも大きかったら無視
        end

        nil
      end

      def normalize(str)
        return nil unless str
        str.downcase.gsub(/\s+/, " ").strip
      end
    end
  end
end
