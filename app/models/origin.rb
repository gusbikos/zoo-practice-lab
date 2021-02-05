
class Origin

    @@all = []

    attr_reader :country, :continent

    def initialize(continent, country)
        @continent = continent
        @country = country 
        @@all << self
        #binding.pry 
    end

    def self.all 
        @@all 
    end 

    def animals 
        binding.pry
    end 

    def zoo
        
    end 

    def animal_number 
    
    end 

    def self.find_by_continent 
    
    end 

    def self.most_animals 

    end 



end
