require_relative 'human'

class Ninja < Human
    attr_accessor :stealth

    def initialize
        super
        @stealth = 175
    end

    def steal(target)
        attack(target)
        @health += 10
        self
    end

    def get_away
        @health -= 15
        self
    end
end

RJ = Ninja.new
RJ.steal(Brandon).get_away
p RJ.health
p Brandon.health