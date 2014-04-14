# -*- encoding: utf-8 -*-

require "date"
require "open-uri"
require "singleton"
require "uri"

require "acme/smileage/discography/hello_project_music_award"

module Acme
  class Smileage
    class Discography
      module Tracks
        class Base
          DEFAULT_USER_AGENT = "Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/6.0)"

          attr_reader :name, :name_romaji, :nicknames, :lyricists, :composers, :arrangers
          attr_reader :hpma
          attr_reader :lyric_links, :youtube_links, :itunes_links

          def initialize
            @lyricists = ["つんく♂"]
            @composers = ["つんく♂"]
          end

          def cover?; false; end
          def remix?; false; end

          def get_lyrics(site=nil)
            return nil unless self.lyric_links

            case site
            when :utanet
              get_utanet(self.lyric_links[:utanet])
            when :utamap
              get_utamap(self.lyric_links[:utamap])
            when nil
              get_lyrics(:utanet) or get_lyrics(:utamap)
            else
              raise ArgumentError, "Invalid site: #{site}"
            end
          end

          private

          def get_utanet(uri)
            return nil if not uri or not uri =~ /\/song\/(\d+)/
            id = $1

            r = http_get(uri, "/user/phplib/swf/showkasi.php?ID=#{id}")
            r = r[(10 + 16 * 4) - 1, r.length - (10 + 16 * 4) - 13]
            r.force_encoding("utf-8")
            r.strip
          end

          def get_utamap(uri)
            return nil if not uri or not uri =~ /\?surl=([a-zA-Z0-9-]+)/
            id = $1

            r = http_get(uri, "/phpflash/flashfalsephp.php?unum=#{id}")
            r.force_encoding("utf-8")
            r.sub(/^.*?test2=/, "").strip
          end

          def http_get(baseuri, path)
            uri = URI(baseuri) + path
            open(uri, "User-Agent" => DEFAULT_USER_AGENT) {|f| f.read }
          end
        end
      end
    end
  end
end
