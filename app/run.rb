# gemfile
require 'pry'
require 'require_all'

# import relative path
require_all './models/*'

# Animal 
tiger = Animal.new("tigger", "tiger")
bear = Animal.new("tigger", "bear")

# Origin
usa = Origin.new('North America', "usa")
mexico = Origin.new("North America", "mexico")
europe = Origin.new("europe", "france")
# Zoo
bronx_zoo = Zoo.new(tiger, usa, "Queens", "hood")
bronx3= Zoo.new(bear, mexico, "Bronx", "hood")
bronx2 = Zoo.new(tiger, europe, "Bronx", "hood")
bronx1 = Zoo.new(tiger, mexico, "Bronx", "hood")


binding.pry
0