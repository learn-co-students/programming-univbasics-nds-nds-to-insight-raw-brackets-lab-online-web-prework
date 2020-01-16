$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {}
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  cntr1 = 0 
  while cntr1 < nds.length do
    director = nds[cntr1][:name]
    sum_of_wwg = 0
    cntr2 = 0 
    while cntr2 < nds[cntr1][:movies].length do
      sum_of_wwg = sum_of_wwg + nds[cntr1][:movies][cntr2][:worldwide_gross]
      cntr2 += 1
    end 
    result.store(director, sum_of_wwg)
    cntr1 += 1 
  end
  # Be sure to return the result at the end!
  result
end
