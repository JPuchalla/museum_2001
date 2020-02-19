require './lib/exhibit'
require './lib/patron'
require 'minitest/autorun'
require 'minitest/pride'


class MerchantTest < Minitest::Test
  def setup
    @exhibit = Exhibit.new({name: "Gems and Minerals", cost: 0})
  end

  def test_if_it_exists
    assert_instance_of Exhibit, @exhibit

  end

  def test_if_it_can_hold_attributes
    assert_equal "Gems and Minerals", @exhibit.name
    assert_equal 0, @exhibit.cost
  end
end
