class River < Area
    def arrive
        puts "\nYou arrive at Outsidedoor River Crossing. \nWidth 30 feet\nDepth: 9 feet"
        puts "What would you like to do?\n\n1. Attempt to ford the river"
        puts "2. Caulk the wagon and float it across\n3. See if there are any fish with ideas"
        puts "4. Wait to see if conditions improve\n"
    end

    def check_command(choice)
        if choice == '1'
            puts "The river is too deep to ford.\n\n"
            wait
            puts "You lose:\n102 Bullets, 3 Oxen, 1 Wagon Axel\n\n"
            wait(5)
            puts 'Also you died'
            wait
            puts 'Good effort though!'
            return End.new(@player)
        elsif choice == '2'
            puts 'You don\'t have a wagon.'
            wait
            puts "TIP: Try using your imagination to picture the game!\n\n"
            wait
        elsif choice == '3'

          f = " ><))))\"> "

          counter = 15

          clear
          puts 'THE FISH HAD A GREAT IDEA'
          sleep (1)
          clear

          while counter > 0
            if counter.odd?
              puts "      \\O/\n       |\n       |\n      / \\\n  -#{f}\n"
              puts '/\/\/\/\/\/\/\/\\'
              counter -= 1
              sleep(0.2)
              clear
            else
              puts "      \\O/\n       |\n       |\n      / \\\n"
              puts "  -#{f}\n"
              puts '\\/\/\/\/\/\/\/\/'
              counter -= 1
              sleep(0.2)
              clear
            end
          end
          puts 'YOU WIN'
          return End.new(@player)
        elsif choice == '4'
            puts "They don't.\n\n"
            wait
        else
            puts "STOP PLAYING BADLY\n\n"
            wait
        end

        return false
    end
end
