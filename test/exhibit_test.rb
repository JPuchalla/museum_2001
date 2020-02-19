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

  def test_case_name

  end
end
