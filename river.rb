class River

  attr_accessor :fish
  attr_reader :name

  def initialize(name)
    @name = name
    @fish = []
  end

  def fish_count
    @fish.count
  end

  

end
