require_relative 'area'
require_relative 'end'
require_relative 'player'
require_relative 'inventory'
require_relative 'door'
require_relative 'river'
require_relative 'forest'

def wait(seconds=1)
    sleep(seconds)
end

def clear
    puts "\e[H\e[2J"
end

player = Player.new

current_area = Door.new(player)

while current_area.active?

    current_area.arrive

    choice = gets.chomp
    clear

    next_area = current_area.check_command(choice)

    if next_area
        current_area = next_area
    end
end
