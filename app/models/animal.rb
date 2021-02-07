
class Animal

    # getter
    attr_reader :species, :name, :zoo_instance, :origin_instance

    #  class variable
    @@all = []

    def initialize(name, species, zoo_instance, origin_instance)
        @name, @species, @zoo_instance, @origin_instance = name, species, zoo_instance, origin_instance
        # [] => Animal
        @@all << self
    end

       #=> Animal.all
    def self.all
        @@all
    end
end