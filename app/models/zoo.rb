class Zoo

    @@all = [] 


    attr_accessor :zoo_name 
    attr_reader :address 



    def initialize(name, address)
        @zoo_name = zoo_name 
        @address = address 
        @@all << self 
    end 

    def self.all 
        @@all 
    end 

    def all_animals 
    
    end 

    def all_animal_species 
    
    end 

    def self.find_by_name 
    
    end 


    
end 
zoo = Zoo.new("horse","ny")
binding.pry 
0