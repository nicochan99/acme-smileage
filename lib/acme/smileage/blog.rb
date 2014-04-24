# -*- encoding: utf-8 -*-

require "acme/smileage/downloader/ameblo"

module Acme
  class Smileage
    class Blog
      @@cache = {}

      attr_reader :blog_link, :author

      def initialize(blog_link, author)
        @blog_link = blog_link
        @author = author
        @downloader = Acme::Smileage::Downloader::Ameblo.new
      end

      def get_entry(entry_link)
        @@cache[entry_link] ||= @downloader.get_entry(entry_link)
      end

      def get_entry_list(page = 1)
        r = (@@cache[[self.blog_link, page]] ||= @downloader.get_entry_list(self.blog_link, page))

        r = r.dup
        r[:entries] = r[:entries].select {|e| e[:author] == self.author }
        r
      end
    end
  end
end
