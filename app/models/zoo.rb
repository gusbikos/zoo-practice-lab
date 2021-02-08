class Zoo

    # getter
    attr_reader :address

    # getter and setter
    attr_accessor :name
    # class variable
    @@all = []

    def initialize( name, address)
        @name, @address = name, address
        # [] => Origin
        @@all << self
    end

    
       
    def self.all
       @@all
    end

    def all_animals
        Animal.all.select { |a| a.zoo_instance == self}
    end

    def all_animals
        Animal.all
    end


    # Zoo#all_animals should return all the animals that a specific instance of a zoo has.
    def all_animals_species
        self.all_animals.map(&:species).uniq
    end

    def self.find_by_name(name)
        self.all.select { |z| z.name == name}
    end

     # !`Zoo#origins` should return all the unique animal origins that a specific instance of a zoo has.

    def origins
        self.all_animals.map(&:origin_instance).uniq        
    end
end
