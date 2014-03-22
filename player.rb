class Player
    attr_accessor :inventory
    attr_accessor :health

    def initialize
        @inventory = Inventory.new
        @health = 10
    end
end
