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
end

