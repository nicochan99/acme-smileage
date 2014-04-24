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

          with_nokogiri(blog_link, "entrylist-#{page}.html") do |doc, uri|
            doc.css(".contentsList li").each do |li|
              r[:entries] << parse_entry_list_item(li)
            end

            r[:link] = uri.to_s
            r[:next_page] = parse_next_page(doc)
            r
          end
        end

        def get_entry(entry_link)
          with_nokogiri(entry_link) do |doc|
            {
              :title => parse_text(doc, ".skinArticleTitle"),
              :published => parse_text(doc, ".articleTime > time"),
              :body => parse_text(doc, ".articleText"),
              :good_count => parse_attr(doc, ".iineEntryCnt", "data-entryiinecnt").to_i,
              :comment_count =>  parse_number(doc, ".commentLink"),
              :comment_link => parse_attr(doc, ".commentLink", :href),
              :next_entry_link => parse_attr(doc, ".pagingNext", :href),
              :prev_entry_link => parse_attr(doc, ".pagingPrev", :href),
              :images => parse_image_list(doc),
              :comments => parse_comment_list(entry_link, doc),
            }
          end
        end

        private

        def parse_entry_list_item(li)
          link = parse_attr(li, ".contentTitle", :href)
          title = parse_text(li, ".contentTitle")
          published = parse_text(li, ".contentTime")
          count = parse_number(li, ".contentComment")

          return {
            :link => safe_strip(link),
            :title => safe_strip(title),
            :published => safe_strip(published),
            :comment_count => count,
            :author => guess_author(link, title),
          }
        end

        def parse_next_page(doc)
          parse_attr(doc, ".listPagePaging .pagingNext", :href) do |href|
            href[/entrylist-(\d+)/, 1].to_i if href
          end
        end

        def parse_image_list(doc)
          doc.css(".articleText a img").map{|e|
            src =  e[:src]
            if src.sub!(/t[0-9]+_([0-9]+)/) { "o#{$1}" }
              src
            end
          }.compact
        end

        def parse_comment_list(entry_link, doc)
          r = []
          doc.css(".commentList li").each do |li|
            r << {
              :link => "%s#%s" % [entry_link, li.css("a")[0][:id]],
              :title => parse_text(li, ".commentHeader"),
              :body => parse_text(li, ".commentBody"),
              :author => parse_text(li, ".commentAuthor"),
              :author_link => parse_attr(li, ".commentAuthor", :href),
              :time => parse_text(li, ".commentTime > time"),
            }
          end
          r
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

        def parse_text(doc, css)
          e = doc.css(css)
          return nil if not e

          e.text.strip
        end

        def parse_number(doc, css)
          v = parse_text(doc, css)
          return nil if not v

          vv = v[/\d+/, 0]
          return nil if not vv

          vv.to_i
        end

        def parse_attr(doc, css, attr)
          e = doc.css(css)
          return nil if not e or e.empty?

          v = e[0][attr]
          if block_given?
            yield v
          else
            v
          end
        end

        def safe_strip(s)
          s.strip if s
        end

      end
    end
  end
end
