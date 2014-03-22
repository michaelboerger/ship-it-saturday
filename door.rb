class Door < Area
    def arrive
        if @player.inventory.hat
            puts "\nYou are at a door that says, \"Hats Wearers Only!\"\n(The door still cannot talk but it looks pleased with your hat).\nYou also see a spot that reminds you of the first time you met your hat"
            puts "\nWhat would you like to do? \n1. Go through the door\n2. Think fondly back on the time you picked up a hat\n3. Quit"
        else
            puts "\nYou are at a door that says, \"Hats Wearers Only!\"\n(There is a sign on the door, it is not a talking door).\nYou also see a hat on the ground"
            puts "\nWhat would you like to do? \n1. Go through the door\n2. Get that hat\n3. Quit"

        end
    end

    def check_command(choice)
        if choice == '1'
            puts "You bravely step forward to the door\n\n"
            wait
            if @player.inventory.hat
                puts "YOU HAVE GOTTEN PAST THE DOOR CHALLENGE\n\n"
                wait
                return River.new(@player)
            else
                puts "Your adventurous spirit is undaunted by the door being closed.\n\n"
                wait(2)
                puts "*BONK*\n\n"
                wait
                puts "You have walked face first into the door, mistakes have been made\n"
                wait(3)
            end
        elsif choice == '2'
            if @player.inventory.hat
                puts '<3<3 HAT <3<3'
                puts '      \\'
                puts "       O\n      /|\\\n       |\n      / \\"
                wait
            else
                puts "You are now wearing a hat you found on the ground! Good going!\n\n"
                wait
                puts "The door opens!\n"
                @player.inventory.hat = true
                wait
            end
            wait
        elsif choice == '3'
            puts "You don't have the spirit of adventure in your heart\n"
            puts "You have let everyone down this day.\n"
            puts 'BAD END.'
            return End.new(@player)
        elsif choice == 'forest'
            return Forest.new(@player)
        else
            puts "YOU ARE BAD AT GAMES\n"
            wait
            puts "TYPE THE NUMBER OF YOUR CHOICE\n"
            wait
        end

        return false
    end
end
