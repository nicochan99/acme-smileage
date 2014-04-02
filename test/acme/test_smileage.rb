require "date"

require "minitest_helper"

class Acme::TestSmileage < MiniTest::Unit::TestCase
  def test_version_number
    refute_nil ::Acme::Smileage::VERSION
  end

  def test_member_active
    assert_equal 6, ::Acme::Smileage.new.members.length
    assert_equal 6, ::Acme::Smileage.new.members(:active).length
  end

  def test_member_graduate
    assert_equal 3, ::Acme::Smileage.new.members(:graduate).length
  end

  def test_member_date
    assert_equal 7, ::Acme::Smileage.new.members(Date.new(2011, 12, 31)).length
    assert_equal 6, ::Acme::Smileage.new.members(Date.new(2012, 1, 1)).length
  end
end
