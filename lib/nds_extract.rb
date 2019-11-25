$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  # require 'pp'
  # pp directors_database
  count = 0
  counter = 0
  ss = 0 
  while counter < nds.length do
    name = nds[counter][:name]
  while count < nds[counter][:movies].length do
  ss += nds[counter][:movies][count][:worldwide_gross]
  count += 1
end 
  total = {name => ss}
  result = result.merge!(total)
  ss = 0
  count = 0
  counter += 1
end
puts result
return result
# inner_count = 0
# gross = 0

# while inner_count < directors_database[0][:movies][inner_count].length do
#   gross += directors_database[0][:movies][inner_count][:worldwide_gross]
#   inner_count += 1
# end
# puts gross
end