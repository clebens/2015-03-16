ROOMS = [
    {
    :location => "2,2,2",
    :name => "Control Room",
    :welcome_msg => "You're in the Control Room, where you started. You haven't gotten very far.",
    :items => {
            "Useless Junk" => {
            }
        }
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
            "research" => lambda do |state, params|
                if params.downcase == "science"
                    puts "\nYou researched the science!\nYou Win!!!!!\n\n"
                    exit
                elsif params.length == 0
                    puts "\nYou need to be more specific. What on earth are you trying to research?"
                else
                    puts "\nYou're a scientist. And you're researching the wrong thing."
                end
            end
        }
    },

    {
        :name => "Control Room Hole",
        :location => "2,2,1",
        :welcome_msg => "You fell into the hole in the Control Room. There isn't even gravity here. Good work."
    } 
        
]
