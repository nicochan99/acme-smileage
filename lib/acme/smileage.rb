require "acme/smileage/members"
require "acme/smileage/tracks"
require "acme/smileage/version"

module Acme
  class Smileage
    def initialize
      @members = []
      @members << Acme::Smileage::Members::WadaAyaka.new
      @members << Acme::Smileage::Members::FukudaKanon.new
      @members << Acme::Smileage::Members::NakanishiKana.new
      @members << Acme::Smileage::Members::TakeuchiAkari.new
      @members << Acme::Smileage::Members::KatsutaRina.new
      @members << Acme::Smileage::Members::TamuraMeimi.new

      @members << Acme::Smileage::Members::MaedaYuuka.new
      @members << Acme::Smileage::Members::OgawaSaki.new
      @members << Acme::Smileage::Members::KosugaFuyuka.new

      @members.sort_by! {|e| [e.generation, e.birthday] }
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
