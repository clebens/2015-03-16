class State
  attr_accessor :position, :items, :triggers, :map

  def initialize(map)
    @position = "2,2,2"
    @items = []
    @triggers = {}
    @map = map
  end
end

