# -*- encoding: utf-8 -*-

require "open-uri"
require "uri"

module Acme
  class Smileage
    module Downloader
      class Base
        DEFAULT_USER_AGENT = "Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/6.0)"

        private

        def http_get(baseuri, path)
          uri = URI(baseuri) + path
          open(uri, "User-Agent" => DEFAULT_USER_AGENT) {|f| f.read }
        end
      end
    end
  end
end
