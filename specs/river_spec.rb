require("minitest/autorun")
require("minitest/rg")

require_relative("../river")
require_relative("../fish")


class RiverTest < MiniTest::Test
  def setup
    @river = River.new('Nile')
    @fish = Fish.new('Cod')
  end

  def test_river_name
    assert_equal('Nile', @river.name)
  end

  def test_fish_count
    @river.fish = [@fish,@fish,@fish,@fish]
    result = @river.fish_count
    assert_equal(4,result)
  end



end
