class Zoo

    # getter
    attr_reader :address, :zoo_instance, :animal_instance

    # getter and setter
    attr_accessor :name
    # class variable
    @@all = []

    def initialize(zoo_instance, animal_instance, name, address)
        @zoo_instance, @animal_instance = zoo_instance, animal_instance
        @name, @address = name, address
        # [] => Origin
        @@all << self
    end

    
       #=> Origin.all
    def self.all
       @@all
    end

    def all_animals
        Animal.all
    end

    # Zoo#all_animals should return all the animals that a specific instance of a zoo has.
    def all_animals_species
        self.all_animals.map(&:species)
    end

    def self.find_by_name(name)
        self.all.select { |z| z.name == name}
    end
end
