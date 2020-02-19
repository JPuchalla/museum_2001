require './lib/museum'
require './lib/exhibit'
require './lib/patron'
require 'minitest/autorun'
require 'minitest/pride'

class MerchantTest < Minitest::Test
  def setup
    @dmns = Museum.new("Denver Museum of Nature and Science")
  end

  def test_if_it_exists
    assert_instance_of Museum, @dmns

  end
end
