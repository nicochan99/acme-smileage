# -*- encoding: utf-8 -*-

require "acme/smileage/blog/ameblo_downloader"

module Acme
  class Smileage
    module Blog
      class Ameblo
        @@cache = {}

        attr_reader :blog_link, :author

        def initialize(blog_link, author)
          @blog_link = blog_link
          @author = author
          @downloader = Acme::Smileage::Blog::AmebloDownloader.new
        end

        def get_entry_list(page = 1)
          r = (@@cache[[self.blog_link, page]] ||= @downloader.get_entry_list(self.blog_link, page))

          r = r.dup
          r.entries = r.entries.select {|e| e.author == self.author }
          r
        end

        def get_entry_body(entry_header)
          entry_link = coerce_entry_link(entry_header)
          @@cache[entry_link] ||= @downloader.get_entry_body(entry_link)
        end

        private

        def coerce_entry_link(x)
          case x
          when String, URI
            x
          when Acme::Smileage::Blog::Entry::Header
            x.link
          else
            raise ArgumentError, "Invalid entry link: #{x}"
          end
        end
      end
    end
  end
end
