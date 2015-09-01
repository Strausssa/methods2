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
    assert_equal 10, @m.ticket(4, 6, 3)
    assert_equal 0, @m.ticket(5, 4, 3)
    assert_equal 10, @m.ticket(6, 4, 3)
  end

  def test_in_order
    assert_equal true, @m.in_order?(6, 3, 4, true)
    assert_equal false, @m.in_order?(11, 9, 6, false)
    assert_equal true, @m.in_order?(1, 3, 4, false)
    assert_equal false, @m.in_order?(8, 3, 1, false)
  end

  def test_less_by_ten
    assert_equal true, @m.less_by_ten?(11, 18, 6)
    assert_equal true, @m.less_by_ten?(16, 3, 4)
    assert_equal false, @m.less_by_ten?(9, 18, 10)
    assert_equal false, @m.less_by_ten?(1, 3, 4)
  end

  def test_fizz_string
    assert_equal "Fizz", @m.fizz_string("Firetruck")
    assert_equal "Buzz", @m.fizz_string("Balogna")
    assert_equal "FizzBuzz", @m.fizz_string("Fire Bib")
    assert_equal "ok", @m.fizz_string("ok")
  end

  def test_rotate_left
    assert_equal [8, 4, 7], @m.rotate_left([7, 8, 4])
    assert_equal [14, 78, 8], @m.rotate_left([8, 14, 78])
    assert_equal [5, 91, 6], @m.rotate_left([6, 5, 91])
    assert_equal [6, 8, 4], @m.rotate_left([4, 6, 8])
  end

  def test_double23
    assert_equal false, @m.double23([])
    assert_equal true, @m.double23([2, 2])
    assert_equal false, @m.double23([5])
    assert_equal true, @m.double23([3, 3])
  end
end
