# -*- encoding: utf-8 -*-

require "acme/smileage/commands/base"

module Acme
  class Smileage
    module Commands
      class Oricon < Thor
        option :single, :type => :boolean
        option :album, :type => :boolean
        desc "show [--album]", "Prints oricon sales data"
        def show
          sm = Acme::Smileage.new
          filter = options[:album] ? :album? : :single?

          puts "初動売上  累積売上  初動比  最高位  登場回  発売日      タイトル"
          sm.discography(&filter).each do |album|
            next unless album.oricon
            puts "%s枚  %s枚  %.2f    %s位   %s回    %s  %s" % [
              format_number(album.oricon.first_week_sales, 5),
              format_number(album.oricon.total_sales, 5),
              album.oricon.total_to_first_week_ratio,
              format_number(album.oricon.peak_rank, 3),
              format_number(album.oricon.weeks_on_chart, 2),
              album.release_date,
              album.name
            ]
          end
        end

        private

        def format_number(n, rank)
          ("%0#{rank}d" % n).reverse.gsub( /(\d{3})(?=\d)/, '\1,').reverse.gsub(/^(0+)/) { '*' * $1.length }
        end
      end
    end
  end
end
