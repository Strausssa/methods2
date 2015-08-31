require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'methods2'

class Methods2Test < MiniTest::Test
	def setup
		@m = Class.new do
     include Methods2
   	end.new
	end

  def test_elevenish
    assert_equal true, @m.elevenish(11)
    assert_equal true, @m.elevenish(12)
    assert_equal false, @m.elevenish(10)
  end

  def test_ice_cream_party
    assert_equal 0, @m.ice_cream_party(0,5)
    assert_equal 1, @m.ice_cream_party(4,5)
    assert_equal 1, @m.ice_cream_party(5,4)
    assert_equal 2, @m.ice_cream_party(5,5)
  end

  def test_successful_squirrel_party
    assert_equal false, @m.successful_squirrel_party?(80, false)
    assert_equal false, @m.successful_squirrel_party?(34, true)
    assert_equal true, @m.successful_squirrel_party?(100, true)
    assert_equal true, @m.successful_squirrel_party?(54, false)
  end

  def test_ticket
    assert_equal 5, @m.ticket(15, 4, 5)
    assert_equal 0, @m.ticket(5, 4, 3)
    assert_equal 10, @m.ticket(4, 6, 3)
    assert_equal 10, @m.ticket(6, 4, 3)
  end
end
