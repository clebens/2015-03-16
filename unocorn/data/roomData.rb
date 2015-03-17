ROOMS = [
    {
    :location => "2,2,2",
    :name => "Control Room",
    :welcome_msg => "You're in the Control Room, where you started. You haven't gotten very far.",
    :items => [{
        :name => "Useless Junk"
        }],
    },

    {
        :name => "Hallway Tube",
        :location => "2,3,2", 
        :welcome_msg => "You're in a boring tube-shaped hallway."
    },

    {
        :name => "Science Room",
        :location => "2,4,2", 
        :welcome_msg => "There's science in here!",
        :actions => {
            "research" => lambda do |state|
                puts "You researched the science!\n\nYou Win!!!!!\n\n"
                exit
            end
        }
    },

    {
        :name => "Control Room Hole",
        :location => "2,2,1",
        :welcome_msg => "You fell into the hole in the Control Room. There isn't even gravity here. Good work."
    } 
        
]
