require "date"

module Acme
  class Smileage
    class Discography
      class Sales
        attr_reader :first_week_sales, :total_sales, :peak_rank, :weeks_on_chart

        def initialize(first_week_sales, total_sales, peak_rank, weeks_on_chart, available = true)
          @first_week_sales = first_week_sales
          @total_sales = total_sales
          @peak_rank = peak_rank
          @weeks_on_chart = weeks_on_chart
          @available = available
        end

        def available?; @available; end

        def to_a
          [self.first_week_sales, self.total_sales, self.peak_rank, self.weeks_on_chart]
        end

        NotAvailable = Sales.new(0, 0, 0, 0, false)
        def self.not_available; NotAvailable; end
      end
    end
  end
end
