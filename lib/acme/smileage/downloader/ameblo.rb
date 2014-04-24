# -*- encoding: utf-8 -*-

require "acme/smileage/downloader/base"

module Acme
  class Smileage
    module Downloader
      class Ameblo < Base
        def get_entry_list(blog_link, page=1)
          r = {
            :link => nil,
            :entries => [],
            :next_page => nil,
          }
          return r unless blog_link

          uri = URI(blog_link) + "entrylist-#{page}.html"
          with_nokogiri(uri) do |doc|
            doc.css('.contentsList li').each do |li|
              r[:entries] << parse_entry_list_item(li)
            end

            r[:link] = uri.to_s,
            r[:next_page] = parse_next_page(doc)
            r
          end
        end

        private

        def parse_entry_list_item(li)
          link = li.css('.contentTitle')[0][:href]
          title = li.css('.contentTitle').text
          published = li.css('.contentTime').text
          if e = li.css('.contentComment').text
            count = $1.to_i if e =~ /(\d+)/
          end

          return {
            :link => safe_strip(link),
            :title => safe_strip(title),
            :published => safe_strip(published),
            :comment_count => count,
            :author => guess_author(link, title),
          }
        end

        def parse_next_page(doc)
          e = doc.css('.listPagePaging .pagingNext')
          if e and not e.empty? and e[0][:href] =~ /entrylist-(\d+)/
            $1.to_i
          end
        end

        BLOG_ENTRY_AUTHOR_MAPPING = {
          "http://ameblo.jp/smileage-submember/entry-11018609295.html" => "Katsuta",
          "http://ameblo.jp/smileage-submember/entry-11039125372.html" => "Nakanishi",
          "http://ameblo.jp/smileage-submember/entry-11063872434.html" => "Katsuta",
          "http://ameblo.jp/smileage-submember/entry-11073466463.html" => "Tamura",
          "http://ameblo.jp/smileage-submember/entry-11155617406.html" => nil, # スタッフ
          "http://ameblo.jp/smileage-submember/entry-11215252589.html" => "Tamura",
          "http://ameblo.jp/smileage-submember/entry-11217726959.html" => "Takeuchi",
          "http://ameblo.jp/smileage-submember/entry-11453335643.html" => "Tamura",
          "http://ameblo.jp/smileage-submember/entry-11529821236.html" => "Tamura",
          "http://ameblo.jp/smileage-submember/entry-11545517618.html" => "Takeuchi",
          "http://ameblo.jp/smileage-submember/entry-11545630723.html" => "Takeuchi",
          "http://ameblo.jp/smileage-submember/entry-11614497735.html" => nil, # スタッフ
          "http://ameblo.jp/smileage-submember/entry-11623987909.html" => "Takeuchi",
          "http://ameblo.jp/smileage-submember/entry-11821080105.html" => "Nakanishi"
        }

        def guess_author(link, title)
          if author = BLOG_ENTRY_AUTHOR_MAPPING[link]
            return author
          end

          case link
          when /wadaayaka/
            "Wada"
          when /kanon-fukuda/
            "Fukuda"
          when /smileage-submember/
            case title
            when /中西香菜/, /中西/
              "Nakanishi"
            when /竹内朱莉/, /竹内/, /朱莉/
              "Takeuchi"
            when /勝田里奈/, /R.?I.?N.?A/i
              "Katsuta"
            when /田村芽実/, /田村/, /芽実/
              "Tamura"
            end
          end
        end

        def safe_strip(s)
          s.strip if s
        end

      end
    end
  end
end
