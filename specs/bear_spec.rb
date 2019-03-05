require("minitest/autorun")
require("minitest/rg")

require_relative("../bear")
require_relative("../river")
require_relative("../fish")


class BearTest < MiniTest::Test
  def setup
    @bear = Bear.new('Brown')
    @river = River.new('Nile')
    @fish = Fish.new('Cod')
  end

  def test_bear_name
    assert_equal('Brown', @bear.name)
  end

  def test_bear_stomach_count__empty
    result = @bear.stomach_count
    assert_equal(0, result)
  end

  def test_bear_stomach_count__full
    @bear.stomach = [@fish,@fish,@fish,]
    result = @bear.stomach_count
    assert_equal(3,result)
  end

  def test_get_fish
    @river.fish = [@fish,@fish,@fish]
    @bear.get_fish(@river)
    assert_equal(1,@bear.stomach.count)
    assert_equal(2, @river.fish.count)
  end

  def test_bear_roar
    result = @bear.roar
    assert_equal('Raaar!', result)
  end

end
