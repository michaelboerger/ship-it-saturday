class Forest < Area
    def arrive
        puts 'You thank the fish for the help.'
        puts "\nYou start walking to the forest in the distance"
        wait(3)
        puts "\nOH NO WOLVES\nDO SOMETHING!!!\n"
        puts "1. Quit because you are scurred\n2. Attack the wolves\n3. Win the Game\n"
        puts "4. Attempt to ford the wolves"
    end

    def check_command(choice)
        if choice == '1'
            puts "You will live to text adventure again\n\nThis is not a true ending!\n\nTry again from the door!"
            wait(5)
            return Door.new(@player)
        elsif choice == '2'
            puts "You make poor life choices and now you have been eaten by wolves\n\nBAD END"
            wait
            return End.new(@player)
        elsif choice == '3'
            puts "YOU WIN\n\nYou are a great player and have learned the magic of friendship!"
            wait
            return End.new(@player)
        elsif choice == '4'
            puts 'You have died of dysentery'
            wait
            puts 'BAD END'
            wait
            return End.new(@player)
        end

        return false
    end
end

