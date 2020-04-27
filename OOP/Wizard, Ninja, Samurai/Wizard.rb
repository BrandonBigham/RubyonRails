require_relative 'human'

class Wizard < Human
    attr_accessor :health, :intelligence

    def initialize
        super
        @health = 50
        @intelligence = 25
    end

    def heal
        @health += 10
        self
    end

    def fireball(target)
        target.health -= 20
        self
    end
end

Luci = Wizard.new
Luci.heal.fireball(Taylor)
p Taylor.health
p Luci.health