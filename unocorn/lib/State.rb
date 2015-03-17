class State
  attr_accessor :position, :items, :triggers, :map

  def initialize(map)
    @position = "2,2,2"
    @items = {}
    @triggers = {}
    @map = map
  end
  
  def item_display
      rtn = "\nYou are currently holding: " 
      if @items.length > 0
        @items.each do |k,v|
          rtn += k + " "
        end
        rtn += "\n"
      end
    rtn
  end

end

