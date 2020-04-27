require_relative 'mammal'

class Dog<Mammal
    def pet
        @health += 5
        self
    end
    def walk
        @health -= 1
        self
    end
    def run
        @health -= 10
        self
    end
end

Link = Dog.new
puts Link.display_health
Link.walk.walk.walk.run.run.pet.display_health