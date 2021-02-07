require 'set'
class Origin

    # getter
    attr_reader :continent, :country

    @@intersection
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

    # !-- - `Origin#animals` should return all the animals that a specific instance of an origin has. -->
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
        # ! output => integer 
        # ? number of different animal instance an Origin(mexico || usa) has in total
    end

    def self.find_by_continent(c)
        self.all.filter_map { |v| if v.continent == c; v.country else nil end }
    end
    
    def self.most_animals
        binding.pry
        Animal.all.each_with_object(Hash.new(0)) { |k,v| 
            v[k.origin_instance.continent] += 1 
        }.sort_by {|o, n| n}.last[1]
        # ! general has the most animals
        # ? return an instance of an origin
    end

end

binding.pry
0
