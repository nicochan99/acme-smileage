require "date"
require "singleton"

require "acme/smileage/discography/sales"

module Acme
  class Smileage
    class Discography
      module Albums
        class Base
          attr_reader :name, :nicknames, :release_date, :image_links
          attr_reader :oricon
          attr_reader :tracks

          def single?; not album? and not download_only?; end
          def album?; false; end
          def best_album?; false; end
          def original_album?; album? and not best_album?; end

          def major?; not indies?; end
          def indies?; false; end

          def download_only?; false; end

          private

          def track(track_class)
            @tracks ||= []
            @tracks << track_class.instance
          end
        end
      end
    end
  end
end