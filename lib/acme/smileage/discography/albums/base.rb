require "date"

module Acme
  class Smileage
    class Discography
      module Albums
        class Base
          attr_reader :name, :release_date, :tracks
          attr_reader :oricon

          def track(track)
            @tracks ||= []
            @tracks << track
          end
        end
      end
    end
  end
end
