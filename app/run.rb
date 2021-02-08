# gemfile
require 'pry'
require 'require_all'

# import relative path
require_all './models/*'

# Origin
usa = Origin.new('North America', "usa")
mexico = Origin.new("North America", "mexico")
europe = Origin.new("europe", "france")

# Zoo
bronx_zoo = Zoo.new("Queens", "hood")
bronx3= Zoo.new("Bronx", "hood")
bronx2 = Zoo.new("Bronx", "hood")
bronx1 = Zoo.new("Bronx", "hood")

# Animal 
tiger = Animal.new("tigger", "tiger", bronx_zoo, usa)
bear = Animal.new("rick", "bear", bronx3, mexico)
bear = Animal.new("fuck", "dog", bronx3, mexico)
bear = Animal.new("fuck", "dog", bronx3, europe)
dog = Animal.new("wilbert", "bear", bronx1, europe)

Origin.find_by_continent("North America")

binding.pry
0