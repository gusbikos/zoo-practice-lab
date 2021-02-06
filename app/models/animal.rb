
class Animal

    # getter
    attr_reader :species, :name

    #  class variable
    @@all = []

    def initialize(name, species)
        @name, @species = name, species
        # [] => Animal
        @@all << self
    end

       #=> Animal.all
    def self.all
        @@all
    end
end