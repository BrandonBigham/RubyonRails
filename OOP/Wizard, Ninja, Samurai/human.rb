class Human
    attr_accessor :strength, :intelligence, :stealth, :health
  
    def initialize
      @strength = 3
      @intelligence = 3
      @stealth = 3
      @health = 100
    end
  
    def attack(target)
      if target.class.ancestors.include?(Human)
        puts "Attacking target..."
        target.health -= 10
        true
      else
        puts "Target not Human"
        false
      end
      self
    end
end


Brandon = Human.new
Taylor = Human.new
# wolf = 'pet'
# Taylor.attack(Brandon)
# p Brandon.health
# Brandon.attack(wolf)