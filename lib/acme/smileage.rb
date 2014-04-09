require "acme/smileage/members"
require "acme/smileage/discography"
require "acme/smileage/version"

module Acme
  class Smileage
    def initialize
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

    def albums
      @discography.albums
    end

    def tracks
      @discography.tracks
    end

    def find_track(name)
      @discography.find_track(name)
    end

    def find_album(name)
      @discography.find_album(name)
    end
  end
end
