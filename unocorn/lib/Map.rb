class Map
  attr_accessor :rooms

  def initialize
    @rooms = {}
  end

  def importRooms(roomData) 
    roomData.each do |room|
    end
  end

  def importRoomsObjs(roomData)
    roomData.each do |room|
      @rooms[room.location] = room 
    end
  end

  def neighbors(location)
    loc_vec = str_to_coord(location)
    neighbor_delta = {
      "east" => [1,0,0], 
      "west" => [-1,0,0],
      "north" => [0,1,0], 
      "south" => [0,-1,0],
      "up" => [0,0,1], 
      "down" => [0,0,-1]
    }

    neighbors = []
    neighbor_delta.each do |key, n_vec| 
      n_loc = coords_to_str(vec_add(loc_vec, n_vec)); 
      neighbors.push key if @rooms[n_loc]
    end
    neighbors
  end

  def print_neighbors(location)
    print "After a thorough examination, you see that you can travel in the following directions: "
    neighbors(location).each { |neighbor| print "#{neighbor.capitalize} " }
    print "\n\n"
  end

end

