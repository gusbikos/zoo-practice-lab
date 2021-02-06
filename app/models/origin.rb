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

    def self.most
        @@most
    end

    def animals
        Animal.all
    end

    def zoos
        Zoo.all
    end

    def self.find_by_continent(c)
        self.all.filter_map { |v| if v.continent == c; v.country else nil end }
    end

=begin 
[#<Zoo:0x00007f8dbb077998
  @address="hood",
  @animal_instance=#<Origin:0x00007f8dbb077b28 @continent="North America", @country="usa">,
  @name="Queens",
  @zoo_instance=#<Animal:0x00007f8dbb077c40 @name="tigger", @species="tiger">>,
 #<Zoo:0x00007f8dbb077920
  @address="hood",
  @animal_instance=#<Origin:0x00007f8dbb077ab0 @continent="North America", @country="mexico">,
  @name="Bronx",
  @zoo_instance=#<Animal:0x00007f8dbb077bc8 @name="tigger", @species="bear">>,
 #<Zoo:0x00007f8dbb0778a8
  @address="hood",
  @animal_instance=#<Origin:0x00007f8dbb077a38 @continent="europe", @country="france">,
  @name="Bronx",
  @zoo_instance=#<Animal:0x00007f8dbb077c40 @name="tigger", @species="tiger">>,
 #<Zoo:0x00007f8dbb077830
  @address="hood",
  @animal_instance=#<Origin:0x00007f8dbb077ab0 @continent="North America", @country="mexico">,
  @name="Bronx",
  @zoo_instance=#<Animal:0x00007f8dbb077c40 @name="tigger", @species="tiger">>]
=end

    def self.most_animals
       zoo_ = Zoo.all.filter_map { | v|


    }   
    end

end
binding.pry
0