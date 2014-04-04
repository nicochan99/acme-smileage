# -*- encoding: utf-8 -*-

require "acme/smileage/matcher"
require "acme/smileage/discography/albums"
require "acme/smileage/discography/tracks"

module Acme
  class Smileage
    class Discography
      def initialize
        @albums = []

        # シングル
        @albums << Acme::Smileage::Discography::Albums::Amanojaku.new

        # アルバム
        # TODO

        @tracks = @albums.sort_by {|e| e.release_date }.map{|e| e.tracks }.flatten.uniq
      end

      def albums
        @albums.dup
      end

      def tracks
        @tracks.dup
      end

      def find_track(name)
        matcher = Matcher.new(name.encode("UTF-8"))
        canon_name = matcher.match(@tracks.map {|e| [e.name] | e.nicknames }.flatten)
        raise ArgumentError, "Track not found: #{name}" unless canon_name
        @tracks.find {|e| e.name == canon_name or e.nicknames.include?(canon_name) }
      end

      def find_album(name)
        matcher = Matcher.new(name.encode("UTF-8"))
        canon_name = matcher.match(@tracks.map {|e| e.name })
        raise ArgumentError, "Album not found: #{name}" unless canon_name
        @albums.find {|e| e.name == canon_name }
      end
    end
  end
end
