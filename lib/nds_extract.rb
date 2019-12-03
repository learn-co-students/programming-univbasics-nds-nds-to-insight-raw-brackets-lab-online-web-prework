$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  name_index = 0
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  result = {}
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  
  while name_index < nds.length do 
    name = nds[name_index][:name]
    result[name] = 0
    movie_index = 0
    #  this while loop hsould get the movie gross
    #  
    while movie_index < nds[name_index][:movies].length do 
      result[name] += nds[name_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1
    end
    name_index += 1
  end
  # Be sure to return the result at the end!
  result
end
