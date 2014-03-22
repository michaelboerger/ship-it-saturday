puts 'You are at a door. The door says "Hats Wearers Only!" (with a sign, this door cannot talk). You see a hat on the ground'
puts "What do you want to do? \n1. Go door\n2. Pick hat\n3. Quit"
choice = gets.chomp
if choice == '1'
  puts 'You went in a door, good going'
elsif choice == '2'
  puts 'Nice hat hot shot!'
elsif choice == '3'
  puts 'You don\'t have the spirit of adventure in your heart and have let everyone down this day. BAD END.'
else
  puts 'YOU ARE BAD AT GAMES'
end

