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

    def members(type=nil)
      case type
      when Date
        @members.select {|e| e.active?(type) }
      when :graduate, :graduated
        @members.select {|e| e.graduated? }
      when :active
        @members.select {|e| e.active? }
      when nil
        @members.dup
      else
        raise ArgumentError, "Invalid type: `#{type}'"
      end
    end

    def discography
      @discography.discography
    end

    def tracks
      @discography.tracks
    end

    def find_discography(name)
      @discography.find_discography(name)
    end

    def find_track(name)
      @discography.find_track(name)
    end
  end
end
