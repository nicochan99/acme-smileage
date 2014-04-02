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

      @members << Acme::Smileage::Members::OgawaSaki.new
      @members << Acme::Smileage::Members::MaedaYuuka.new
      @members << Acme::Smileage::Members::KosugaFuyuka.new
    end

    def members(type=nil)
      case type
      when Date
        @members.select {|e| e.active?(type) }
      when :graduate
        @members.select {|e| e.graduated? }
      when :active
        @members.select {|e| e.active? }
      else
        @members.select {|e| e.active? }
      end
    end
  end
end
