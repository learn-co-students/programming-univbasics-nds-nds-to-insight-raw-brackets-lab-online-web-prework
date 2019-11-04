$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require "pry"
def directors_totals(nds)

  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"

result = {
}  


row_index = 0
#binding.pry
while row_index < directors_database.count do
inner_index = 0
total = 0 
  while inner_index <directors_database[row_index][:movies].count 
  total += directors_database[row_index][:movies][inner_index][:worldwide_gross]
  inner_index += 1
  end 
name = directors_database[row_index][:name]
result[name] = total
row_index += 1
end   
result 
end 
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  

