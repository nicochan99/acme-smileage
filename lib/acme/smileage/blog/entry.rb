# -*- encoding: utf-8 -*-

module Acme
  class Smileage
    module Blog
      module Entry
        class List
          attr_accessor :link, :entries, :next_page

          def initialize
            self.entries = []
            yield self
          end
        end

        class Header
          attr_accessor :link, :title, :datetime
          attr_accessor :comment_count, :good_count
          attr_accessor :author

          def initialize
            yield self
          end
        end

        class Body
          attr_accessor :text
          attr_accessor :comment_link, :next_entry_link, :prev_entry_link
          attr_accessor :image_links
          attr_accessor :comments

          def initialize
            self.image_links = []
            self.comments = []
            yield self
          end
        end

        class Comment
          attr_accessor :text
          attr_accessor :link, :title, :datetime
          attr_accessor :author, :author_link

          def initialize
            yield self
          end
        end
      end
    end
  end
end
