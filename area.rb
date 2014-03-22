class Area
    def initialize(player)
        @player = player
    end

    def active?
        return true
    end

    def arrive
    end

    def check_command
    end

    def wait(seconds=1)
        sleep(seconds)
    end

    def clear
        puts "\e[H\e[2J"
    end
end
