class Forest < Area
    def arrive
        puts 'You thank the fish for the help.'
        puts "\nYou start walking to the forest in the distance"
        wait(3)
        puts "\nOH NO WOLVES"
        puts "1. Quit because you are scurred"
    end

    def check_command(choice)
        if choice == '1'
            return End.new(@player)
        end

        return false
    end
end

