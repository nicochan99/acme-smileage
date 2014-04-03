require "date"

module Acme
  class Smileage
    module MusicLibrary
      class Sales
        attr_reader :name, :first_sales, :total_sales, :ranking

        def initialize(name, first_sales, total_sales, ranking)
          @name = name
          @first_sales = first_sales
          @total_sales = total_sales
          @ranking = ranking
        end
      end
    end
  end
end
