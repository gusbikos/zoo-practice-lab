class Animal

    @@all = []

    attr_reader :species, :name 
    
    def initialize(name, species)
        @name = name 
        @species = species 
        @@all << self 
    end 

    def self.all 
        @@all 
    end 

    def zoo 
    
    end 

    def origin 
    
    end 








end
