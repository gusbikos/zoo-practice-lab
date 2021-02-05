require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# think how many instances of what you need -- how to test your code in a best manner
require 'pry'

require 'require_all'
require_all "../app/models/"


# class Origin
origin = Origin.new("North America", "USA")

# class Animal
tiger = Animal.new("tigger", "tiger")
Animal1 = Animal.new("wilbert", "tiger")
# class zoo
zoo = Zoo.new(tiger, origin)
zoo1 = Zoo.new(Animal1, origin)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line