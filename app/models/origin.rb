require 'set'
class Origin

    # getter
    attr_reader :continent, :country

    # class variable
    @@all = []

    def initialize(continent, country)
        @continent, @country = continent, country
        # [] => Origin
        @@all << self
    end

    
       #=> Origin.all
    def self.all
       @@all
    end

    def animals
        Animal.all.select { |o| o.origin_instance == self}
    end

    def zoos
        #  ! output =>  all zoos 
        self.animals.map(&:zoo_instance)
        # - `Origin#zoos` should return all the zoos that hold animals of this specific origin.

        # if origin == animal to zoo 
        # return all the zoos  => bronx
        # specific origin. => usa. 
    end

    # Origin#animal_number should return an integer that indicates the number of different animal instances an origin has in total.
    def animal_number 
        self.animals.uniq.count
    end

    def self.find_by_continent(c)
        self.all.filter_map { |v| if v.continent == c; v.country else nil end }
    end
    
    def self.most_animals
        binding.pry

        Animal.all.each_with_object(Hash.new(0)) { |key,value| 
            value[key.origin_instance] += 1 
        }.sort_by { |origin, index|
            index
        }.last[0]
        # Animal.all => animal instance


        # .each => loops over the array
        # animal = Hash.new(0) => {}
        # .each_with_object(Hash.new(0))

        # v => nil
        #  k => animal class instance 
        #  k.origin_instance.continent
        #  v[k.origin_instance.continent] += 1 => Hash.new(0)

        # {:k.origin_instance.continent => 1,:k.origin_instance.continent => 2}

        #.sort_by { |o, n| n}.LAST => result {:k.origin_instance.continent => 2}
        
        # .last[0] "North America"
        # ! general has the most animals
        # ? return an instance of an origin
    end

end

binding.pry
0






def animals_number
    animals.size
   end
   def self.most_animals

    usa.animals 
    #=> origin_istance

    animals.size 
    #=> 1
    all.max_by 
    #=> all 

    all.max_by{ |origin| origin.animals_number}
     # this iall.sort{|origin| origin.number_of_animals}.last
   end