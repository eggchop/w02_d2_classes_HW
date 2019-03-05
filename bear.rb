class Bear
  attr_accessor :name, :stomach

  def initialize(name)
    @name = name
    @stomach = []
  end

  def stomach_count
    @stomach.count
  end

  def get_fish(river)
    @stomach << river.fish.pop
  end

  def roar
    'Raaar!'
  end

end
