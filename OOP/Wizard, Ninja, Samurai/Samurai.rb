require_relative 'human'

class Samurai < Human
    attr_accessor :health
    @@num_samurais = 0
    def initialize
        super
        @health = 200
        @@num_samurais += 1
    end

    def meditate
        @health = 200
        puts "health is now full"
        self
    end

    def how_many
        puts "there are currently #{@@num_samurais} samurai(s)"
        self
    end
end

Ben = Samurai.new
Ben.how_many.meditate
