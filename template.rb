# MAYBE YOU WANT TO MAKE YOUR OWN AREA?!
# Edit this templete (without saving over it, thanks in advance)

class SomeDumbPlace < Area
    # This is a subclass of Area
    def arrive
        # This is the part where you use your imagination to take you to wonderous places
        puts 'DESCRIPTION OF A MAGICAL WONDERLAND'
        # Then you put the choices here, try not to be as deadly as the FOREST AND WOLVES or
        # no one will ever play
        puts "1. Die\n 2. Go to the river\n 3. Spin aimlessly in circles"
    end

    def check_command(choice)
        # This is where the results get played out
        if choice == '1'
            puts "YOU PICKED DIE, YOU DIED"
            wait
            # This is how you end the game, it is good to end the game when the player dies
            # because games are more fun when you're alive
            return End.new(@player)
        elsif choice == '2'
            puts "RIVER IT UP"
            wait
            # This sends you to the River, replace River with wherever you want to make the player go
            # To send to the template it would be return SomeDumbPlace.new(@player)
            return River.new(@player)
        elsif choice == '3'
            puts 'SPIN SPIN SPIN'
            wait
            # There is no new class here so it stays in the loop and goes back to the choices
        else
            # This is if they type in "1. Die" or "22" or something else that isn't a choice
            # It loops them back to the top
            puts "OOPS"
            wait
        end

        return false
    end
end

# Now all you need to do is go to dangerquest.rb and add:
# require_relative 'castle_of_screeching_hobgoblins'
# or whatever the name of your wonderous place is and make the last place point to that.

# If you want there to be a spear of +4 nerdiness in the pond_of_the_unforgiving_will_o_wisps
# You can add it in the inventory.rb file, check out how I made the hat and do that.
# If anyone actually wants to do this I can explain that but this is a lot of words already
# and maybe none of you will do it! Also there's an UNIMPLEMENTED health system and the wait and clear
# commands but I already spent my lunch making this template. SOMEONE PLEASE USE THIS.
