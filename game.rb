require_relative 'inventory'
stuff = Inventory.new

def doorarrive (stuff)
  if stuff.hat?
    puts 'You are at a door. The door says "Hats Wearers Only!" (with a sign, this door cannot talk). You see a hat on the ground'
    puts "What do you want to do? \n1. Go door\n2. Think fondly back on the time you picked up a hat\n3. Quit"
    choice = gets.chomp
    door(stuff, choice)
  else
    puts 'You are at a door. The door says "Hats Wearers Only!" (with a sign, this door cannot talk). You see a hat on the ground'
    puts "What do you want to do? \n1. Go door\n2. Pick hat\n3. Quit"
    choice = gets.chomp
    door(stuff, choice)
  end
end

def door (stuff, choice)
  if choice == '1'
    puts 'You went in a door, good going'
      if stuff.hat?
        puts "YOU GOT A HAT, YOU PASSED THE DOOR CHALLENGE"
      else
        puts "You hatless jerk, the door is not pleased"
      end
  elsif choice == '2'
    puts 'Nice hat hot shot!'
    stuff.hat? = true
    doorarrive(stuff)
  elsif choice == '3'
    puts 'You don\'t have the spirit of adventure in your heart and have let everyone down this day. BAD END.'
  else
    puts 'YOU ARE BAD AT GAMES'
  end
end

doorarrive(stuff)

puts "THE END"
