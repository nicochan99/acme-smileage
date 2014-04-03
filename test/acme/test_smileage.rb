# -*- encoding: utf-8 -*-

require "date"

require "minitest_helper"

class Acme::TestSmileage < MiniTest::Unit::TestCase
  def test_version_number
    refute_nil ::Acme::Smileage::VERSION
  end

  def test_member_invalid_type
    s = ::Acme::Smileage.new
    assert_raises(ArgumentError) { s.members(:hoge) }
  end

  def test_member_all
    s = ::Acme::Smileage.new
    assert_equal ["Ayaka", "Yuuka", "Kanon", "Saki", "Kana", "Fuyuka", "Akari", "Rina", "Meimi"], s.members.map{|e| e.first_name_en }
  end

  def test_member_active
    s = ::Acme::Smileage.new
    assert_equal ["Ayaka", "Kanon", "Kana", "Akari", "Rina", "Meimi"], s.members(:active).map{|e| e.first_name_en }
  end

  def test_member_graduate
    s = ::Acme::Smileage.new
    assert_equal ["Yuuka", "Saki", "Fuyuka"], s.members(:graduate).map{|e| e.first_name_en }
    assert_equal ["Yuuka", "Saki", "Fuyuka"], s.members(:graduated).map{|e| e.first_name_en }
  end

  def test_member_date
    s = ::Acme::Smileage.new

    assert_equal ["Ayaka", "Yuuka", "Kanon", "Saki"], s.members(Date.new(2011, 8, 13)).map{|e| e.first_name_en }
    assert_equal ["Ayaka", "Yuuka", "Kanon", "Saki", "Kana", "Fuyuka", "Akari", "Rina", "Meimi"], s.members(Date.new(2011, 8, 14)).map{|e| e.first_name_en }

    assert_equal ["Ayaka", "Yuuka", "Kanon", "Saki", "Kana", "Fuyuka", "Akari", "Rina", "Meimi"], s.members(Date.new(2011, 8, 27)).map{|e| e.first_name_en }
    assert_equal ["Ayaka", "Yuuka", "Kanon", "Kana", "Fuyuka", "Akari", "Rina", "Meimi"], s.members(Date.new(2011, 8, 28)).map{|e| e.first_name_en }

    assert_equal ["Ayaka", "Yuuka", "Kanon", "Kana", "Fuyuka", "Akari", "Rina", "Meimi"], s.members(Date.new(2011, 9, 9)).map{|e| e.first_name_en }
    assert_equal ["Ayaka", "Yuuka", "Kanon", "Kana", "Akari", "Rina", "Meimi"], s.members(Date.new(2011, 9, 10)).map{|e| e.first_name_en }

    assert_equal ["Ayaka", "Yuuka", "Kanon", "Kana", "Akari", "Rina", "Meimi"], s.members(Date.new(2011, 12, 31)).map{|e| e.first_name_en }
    assert_equal ["Ayaka", "Kanon", "Kana", "Akari", "Rina", "Meimi"], s.members(Date.new(2012, 1, 1)).map{|e| e.first_name_en }
  end

  def test_select
    s = ::Acme::Smileage.new

    assert_equal ["Ayaka", "Yuuka", "Kanon", "Saki"], s.select {|e| e.generation == 1 }.map{|e| e.first_name_en }
    assert_equal ["Kana", "Fuyuka", "Akari", "Rina", "Meimi"], s.select {|e| e.generation == 2 }.map{|e| e.first_name_en }
    assert_equal ["Kana", "Akari", "Rina", "Meimi"], s.select {|e| e.generation == 2 && e.active? }.map{|e| e.first_name_en }

    assert_equal ["Ayaka", "Meimi"], s.select {|e| e.hometown == "群馬" }.map{|e| e.first_name_en }
    assert_equal ["Kanon", "Saki", "Akari"], s.select {|e| e.hometown == "埼玉" }.map{|e| e.first_name_en }

    assert_equal ["Ayaka", "Kanon", "Saki", "Kana", "Rina"], s.select {|e| e.blood_type == "A" }.map{|e| e.first_name_en }
    assert_equal ["Yuuka"], s.select {|e| e.blood_type == "B" }.map{|e| e.first_name_en }
  end

  def test_sort_by
    s = ::Acme::Smileage.new
    assert_equal ["Akari", "Ayaka", "Fuyuka", "Kana", "Kanon", "Meimi", "Rina", "Saki", "Yuuka"], s.sort_by {|e| e.name }.map{|e| e.first_name_en }
  end
end
