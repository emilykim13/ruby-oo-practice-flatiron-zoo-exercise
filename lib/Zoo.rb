require 'pry'
class Zoo

    attr_accessor :name, :location

    @@all = []
    
    def initialize(name, location)
        @name = name
        @location = location
        @@all << self
    end

    def self.all
        @@all
    end

    def animals
        Animal.all.select {|instance| instance.zoo.name == self.name}
        # binding.pry
    end

    def animal_species
        Animal.all.map {|instance| instance.species}
        # .uniq?
        # example, in terminal run: z1.animal.species
    end

    def find_by_species(species)
        Animal.all.select {|instance| instance.species == species}
        # example, in terminal run: z1.find_by_species("Panda")
    end

    def animal_nicknames
       # Animal.all.select {|instance| instance.nickname == nickname}
                # the above is wrong bc it returns the animal's information when given the nickname of the animal instead of returning all animal nicknames
        Animal.all.select {|instance| instance.zoo == self}.map {|instance| instance.nickname}
    end

    def self.find_by_location(location)
        binding.pry
      self.all.select {|instance| instance.location == location}
       # binding.pry
    #    Animal.all.select do |instance|
    #     instance.zoo.location == location
    end
end

# binding.pry


