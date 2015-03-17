class Room
  attr_accessor :location, :message, :name, :items

  def initialize(params)
    @location = params.fetch(:location, "0,0,0")
    @name = params.fetch(:name, "Void Within the Unknown")
    @message = params.fetch(:welcome_msg, "default")
    @items = {}
    params.fetch(:items, []).each do |item|
      @items[item[:name]] = Item.new(item)
    end

    @actions = {}
    params.fetch(:actions, []).each do |k,v|
      @actions[k] = v
    end
  
  end

  def interact(action, state)
# binding.pry
    if ["north", "south", "west", "east", "up", "down"].include?(action)
      move(state, action)
      return
    end

    exit if action == "q"
    
    @actions.each do |k,v|
      if (action == k)
        v.call(state)
        return
      end
    end

    puts "Invalid Action"
  end

  def move(state, dir)
    pos = str_to_coord(state.position)
    # dir = [0,1,0] -- north
    # dir = [0,-1,0] -- south
    dir_vec = {
      "north" => [0,1,0],
      "south" => [0,-1,0],
      "west" => [-1,0,0],
      "east" => [1,0,0],
      "up" => [0,0,1],
      "down" => [0,0,-1]
    }
    move_vec = dir_vec[dir]
    new_pos = [pos[0] + move_vec[0], pos[1] + move_vec[1], pos[2] + move_vec[2]].to_s
      .gsub("[", "")
      .gsub("]", "")
      .gsub(" ", "")
    if (state.map.rooms[new_pos])
      state.position = new_pos
    else
      puts "You're blocked!"
    end
  end

  def to_s
      rtn = "\n=== #{@name} ===\n"
      rtn += "\n#{@message}\n"
      rtn += item_display
  end

  def item_display
      rtn = ""
      if @items.length > 0
        rtn += "\nLooking around, you see the following items carelessly strewn about the room: " 
        @items.each do |k,v|
          rtn += k
        end
        rtn += "\n\n"
      end
    rtn
  end

end

