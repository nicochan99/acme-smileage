require "acme/smileage/members"
require "acme/smileage/version"

module Acme
  class Smileage
    def initialize
      @members = Acme::Smileage::Members.new
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

    def select(&block)
      @members.select(&block)
    end

    def sort_by(&block)
      @members.sort_by(&block)
    end
  end
end
