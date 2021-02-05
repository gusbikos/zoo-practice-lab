require 'pry'
require_relative 'animal'
require_relative 'zoo'

class Origin

    @@all = []

    attr_reader :country, :continent

    def initialize(continent, country)
        @continent = continent
        @country = country 
        @@all << self 
    end

    def self.all 
        @@all 
    end 

    def animals 

    end 

    def zoos 

    end 

    def animal_numer 
    
    end 

    def self.find_by_continent 
    
    end 

    def self.most_animals 

    end 



end
