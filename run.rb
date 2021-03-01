require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

z1 = Zoo.new("Houston Zoo", "HTX")
z2 = Zoo.new("Austin Zoo", "ATX")
z3 = Zoo.new("Dallas Zoo", "DTX")


a1 = Animal.new("Bear", 300, "Teddy", z1)
a2 = Animal.new("Panda", 250, "Amber", z1)
a3 = Animal.new("Goat", 80, "Nadal", z2)
a4 = Animal.new("Cow", 400, "Moomoo", z3)
a5 = Animal.new("Shark", 500, "Sharky", z3)

binding.pry
puts "done"
