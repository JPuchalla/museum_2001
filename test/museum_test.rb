require './lib/museum'
require './lib/exhibit'
require './lib/patron'
require 'minitest/autorun'
require 'minitest/pride'

class MuseumTest < Minitest::Test
  def setup
    @dmns = Museum.new("Denver Museum of Nature and Science")
    @gems_and_minerals = Exhibit.new({name: "Gems and Minerals", cost: 0})
    @dead_sea_scrolls = Exhibit.new({name: "Dead Sea Scrolls", cost: 10})
    @imax = Exhibit.new({name: "IMAX",cost: 15})

  end

  def test_if_it_exists
    assert_instance_of Museum, @dmns

  end

  def test_if_it_can_add_multiple_exhibits
    @dmns.add_exhibit(@gems_and_minerals)
    @dmns.add_exhibit(@dead_sea_scrolls)
    @dmns.add_exhibit(@imax)
    assert_equal [{name: "Gems and Minerals", cost: 0},{name: "Dead Sea Scrolls", cost: 10}, {name: "IMAX",cost: 15}], @exhibit


  end
end
