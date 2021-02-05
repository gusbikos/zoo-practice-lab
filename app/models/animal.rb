class Animal

    @@all = []

    attr_reader :species, :name
    
    def initialize(name, species)
        @name = name 
        @species = species 
        @@all << self 
        # binding.pry
    end 

    def self.all 
        @@all 
    end 

    def zoo
        binding.pry
    end 

    def origin 
    
    end 

end
