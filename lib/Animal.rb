require 'pry'
class Animal
    attr_reader :species, :nickname, :zoo
    attr_accessor :weight

    @@all = []

    def initialize(species, weight, nickname, zoo)
        @nickname = nickname
        @weight = weight
        @species = species

        # binding.pry
        @zoo = zoo
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_species(species)
       # binding.pry
        self.all.select {|instance| instance.species == species}
        
    end

 binding.pry
end
