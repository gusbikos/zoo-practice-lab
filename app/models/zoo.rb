class Zoo

    @@all = [] 


    attr_accessor :zoo_name 
    attr_reader :address 



    def initialize(name, address)
        @zoo_name = name 
        @address = address 
        @@all << self 
        #binding.pry
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

0