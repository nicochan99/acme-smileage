# -*- encoding: utf-8 -*-

require "acme/smileage/discography/tracks/base"

module Acme
  class Smileage
    class Discography
      module Tracks
        class SmileageSinglesGekimoeRemix < Base
          include Singleton

          def initialize
            super
            @name = "スマイレージ シングルス 激萌えリミックス"
            @nicknames = []
            @arranger = "田中直"
            @lyric_links = {}
            @youtube_links = []
            @itunes_links = [
              {
                :title => "タチアガール",
                :uri => "https://itunes.apple.com/jp/album/id464723016",
              },
            ]
          end

          def remix?; true; end
        end
      end
    end
  end
end
