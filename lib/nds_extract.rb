$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  pp nds
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
  
  total_gross = 0
  name_index = 0 
  puts nds.size
  puts nds[name_index][:movies][1][:worldwide_gross]
  while name_index < nds.size do 
    movies_index = 0
    director_total_gross = 0
    while movies_index < nds[name_index][:movies].size do
      director_total_gross += nds[name_index][:movies][movies_index][:worldwide_gross] 
      movies_index += 1
    end 
    result["#{nds[name_index][:name]}"] = director_total_gross
    name_index += 1
  end
  
  result
  
end
