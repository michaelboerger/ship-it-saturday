require_relative 'inventory'
stuff = Inventory.new

def wait
  sleep(1)
end

def clear
  puts "\e[H\e[2J"
end

def doorarrive (stuff)
  if stuff.hat
    puts "\nYou are at a door that says, \"Hats Wearers Only!\"\n(The door still cannot talk but it looks pleased with your hat).\nYou also see a spot that reminds you of the first time you met your hat"
    puts "\nWhat would you like to do? \n1. Go door\n2. Think fondly back on the time you picked up a hat\n3. Quit"
  else
    puts "\nYou are at a door that says, \"Hats Wearers Only!\"\n(There is a sign on the door, it is not a talking door).\nYou also see a hat on the ground"
    puts "\nWhat would you like to do? \n1. Go door\n2. Get that hat\n3. Quit"
  end
  choice = gets.chomp
  clear
  door(stuff, choice)
end

def door (stuff, choice)
  if choice == '1'
    puts 'You bravely step toward the door, ready to face the dangers within'
    wait
      if stuff.hat
        puts "YOU PASSED THE DOOR CHALLENGE"
      else
        puts "You approach the unopened door, your adventurous spirit undaunted by it being closed."
        wait
        wait
        wait
        puts "*BONK*"
        puts "You walk face first into the door, mistakes have been made"
      end
  elsif choice == '2'
    if stuff.hat
      puts '<3<3 HAT <3<3'
      puts '      \\'
      puts "       O\n      /|\\\n       |\n      / \\"
      wait
    else
      puts 'You are now wearing a hat you found on the ground! Good going!'
      wait
      puts 'The door opens!'
      stuff.hat = true
      wait
    end
    wait
    doorarrive(stuff)
  elsif choice == '3'
    puts 'You don\'t have the spirit of adventure in your heart and have let everyone down this day. BAD END.'
  else
    puts 'YOU ARE BAD AT GAMES'
  end
end

clear
doorarrive(stuff)
wait
puts "THE END"
