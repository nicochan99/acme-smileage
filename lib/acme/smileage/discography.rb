# -*- encoding: utf-8 -*-

require "acme/smileage/matcher"
require "acme/smileage/discography/albums"
require "acme/smileage/discography/tracks"

module Acme
  class Smileage
    class Discography
      def initialize
        album Acme::Smileage::Discography::Albums::Amanojaku
        album Acme::Smileage::Discography::Albums::AsuhaDateNanoniImasuguKoeGaKikitai
        album Acme::Smileage::Discography::Albums::Sukichan
        album Acme::Smileage::Discography::Albums::OtonaNiNarutteMuzukashii
        album Acme::Smileage::Discography::Albums::Yumemiru15sai
        album Acme::Smileage::Discography::Albums::Yumemiru15saiPaxJaponicaGrooveRemix
        album Acme::Smileage::Discography::Albums::GambaranakutemoEenende
        album Acme::Smileage::Discography::Albums::GambaranakutemoEenendeTopnudeRemixVersion01
        album Acme::Smileage::Discography::Albums::OnajiJikyuuDeHatarakuTomodachiNoBijinMama
        album Acme::Smileage::Discography::Albums::OnajiJikyuuDeHatarakuTomodachiNoBijinMamaRemixType1
        album Acme::Smileage::Discography::Albums::WaruGaki1
        album Acme::Smileage::Discography::Albums::Shortcut
        album Acme::Smileage::Discography::Albums::KoiNiBooingBoo
        album Acme::Smileage::Discography::Albums::UchoutenLove
        album Acme::Smileage::Discography::Albums::ShortcutRemixver
        album Acme::Smileage::Discography::Albums::UchoutenLoverocketmanMix
        album Acme::Smileage::Discography::Albums::Tachiagirl
        album Acme::Smileage::Discography::Albums::PleaseMinisukaPostWoman
        album Acme::Smileage::Discography::Albums::ChotoMateKudasai
        album Acme::Smileage::Discography::Albums::Dotbikini
        album Acme::Smileage::Discography::Albums::SmleageBestAlbumComplete1
        album Acme::Smileage::Discography::Albums::SukiyoJunjouHankouki
        album Acme::Smileage::Discography::Albums::Samuine
        album Acme::Smileage::Discography::Albums::TabidachiNoHaruGaKita
        album Acme::Smileage::Discography::Albums::SmileSensation
        album Acme::Smileage::Discography::Albums::AtarashiiWatashiniNare_Yattaruchan
        album Acme::Smileage::Discography::Albums::Eeka_Iiyatsu
        album Acme::Smileage::Discography::Albums::MysteryNight_EighteenEmotion

        initialize_tracks
      end

      def initialize_tracks
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
        canon_name = matcher.match(@albums.map {|e| e.name })
        raise ArgumentError, "Album not found: #{name}" unless canon_name
        @albums.find {|e| e.name == canon_name }
      end

      private

      def album(album_class)
        @albums ||= []
        @albums << album_class.instance
      end
    end
  end
end
