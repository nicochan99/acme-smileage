require "date"

require "acme/smileage/members"
require "acme/smileage/discography"
require "acme/smileage/version"

module Acme
  class Smileage
    attr_reader :birthday, :homepage_link

    def initialize
      @birthday = Date.new(2009, 4, 4)
      @homepage_link = "http://s-mileage.jp"

      @members = Acme::Smileage::Members.new
      @discography = Acme::Smileage::Discography.new
    end

    def members(&block)
      if block
        @members.members.select(&block)
      else
        @members.members.dup
      end
    end

    def discography(&block)
      @discography.discography(&block)
    end

    def tracks(&block)
      @discography.tracks(&block)
    end

    def find_discography(name)
      @discography.find_discography(name)
    end

    def find_track(name)
      @discography.find_track(name)
    end
  end
end
