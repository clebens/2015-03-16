require 'pry'

Dir.glob("./lib/*.rb") do |file|
    require file
end

map = Map.new
newRooms = []
require "./data/roomData.rb"

ROOMS.each do |room| 
    newRooms.push Room.new(room)
end
map.importRoomsObjs(newRooms)
state = State.new(map)
# binding.pry

inp = ""

cli = Cli.new


#system("clear")

puts "You are on a science mission. You are in a science vessel."
# sleep (2)
puts "You have on scientist glasses and you are a scientist."
# sleep(2)
puts "You can go up, down, north, south, east, west"
# sleep(3)
puts "but you know this already... because you know science."
# sleep(4)
puts "That's why you're on a science mission."
# sleep(4)
puts "On a science vessel, in science glasses."
# sleep(4)
puts "Something tells you there is science to be researched."
# sleep(4)
puts "You adjust your glasses, the sun's intense rays pierce the science windows."
# sleep(4)
puts "You are ready to science."
# sleep(2)

while true


print map.rooms[state.position]
map.print_neighbors(state.position)
print "-> "
inp = gets.chomp
system("clear")
map.rooms[state.position].interact(inp, state)
end
