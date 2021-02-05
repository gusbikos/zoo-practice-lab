require 'pry'

require_relative './zoo'
require_relative './animal'
require_relative './origin'


# class Origin
origin = Origin.new("North America", "USA")

# class Animal
tiger = Animal.new("tigger", "tiger")
Animal1 = Animal.new("wilbert", "tiger")
# class zoo
zoo = Zoo.new(tiger, origin)
zoo1 = Zoo.new(Animal1, origin)

binding.pry
0