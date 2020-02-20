require './lib/exhibit'
require './lib/patron'
require 'minitest/autorun'
require 'minitest/pride'


class PatronTest < Minitest::Test
  def setup
    @patron_1 = Patron.new("Bob", 20)
    @patron_2 = Patron.new("Sally", 20)
    @patron_3 = Patron.new("Johnny", 5)
  end

  def test_if_it_exists
    assert_instance_of Patron, @patron_1

  end

  def test_if_it_can_hold_attributes
    assert_equal "Bob",  @patron_1.name
    assert_equal 20,  @patron_1.spending_money


  end

  def test_if_it_can_hold_interests
    assert_equal [], @patron_1.interests

  end

  def test_if_it_can_add_interests
  @patron_1.add_interest("Dead Sea Scrolls")
  @patron_1.add_interest("Gems and Minerals")
    assert_equal ["Dead Sea Scrolls", "Gems and Minerals"], @patron_1.interests
  end

  
end
