# -*- encoding: utf-8 -*-

require "date"

require "minitest_helper"

class Acme::TestTrack < Minitest::Test
  def test_tracks
    s = ::Acme::Smileage.new

    a = s.tracks.find {|e| e.name =~ /クレームブリュレ/ }
    assert_equal "サンキュ！ クレームブリュレの友情", a.name
    assert_equal ["クレームブリュレ"], a.nicknames
    assert_equal "亜伊林", a.lyric
    assert_equal "つんく♂", a.composer
    assert_equal "高橋諭一", a.arranger
    assert_equal [], a.youtube_links
    assert_equal [{:title => "夢見る 15歳", :uri => "https://itunes.apple.com/jp/album/id372351545"}], a.itunes_links
    assert_equal false, a.cover?
    assert_equal false, a.remix?
  end

  def test_tracks_cover
    s = ::Acme::Smileage.new

    a = s.tracks.find {|e| e.name =~ /ちょこっと/ }
    assert_equal "ちょこっとLOVE", a.name
    assert_equal ["ちょこラブ", "ちょこLOVE"], a.nicknames
    assert_equal "鈴木俊介", a.arranger
    assert_equal [], a.youtube_links
    assert_equal [{:title => "同じ時給で働く友達の美人ママ", :uri => "https://itunes.apple.com/jp/album/id390851470"}], a.itunes_links
    assert_equal true, a.cover?
    assert_equal false, a.remix?
  end

  def test_tracks_remix
    s = ::Acme::Smileage.new

    a = s.tracks.find {|e| e.name =~ /激萌え/ }
    assert_equal "スマイレージ シングルス 激萌えリミックス", a.name
    assert_equal [], a.nicknames
    assert_equal "田中直", a.arranger
    assert_equal [], a.youtube_links
    assert_equal [{:title => "タチアガール", :uri => "https://itunes.apple.com/jp/album/id464723016"}], a.itunes_links
    assert_equal false, a.cover?
    assert_equal true, a.remix?
  end
end
