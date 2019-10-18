$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #puts nds
  ret_hash= {}
  index = 0 
  while nds[index] do
    sum = 0 
    num_movies=0 
    while nds[index][:movies][num_movies] do
      sum += nds[index][:movies][num_movies][:worldwide_gross]
      num_movies += 1 
    end
    ret_hash[nds[index][:name]]= sum    
    index += 1
  end
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
  nil
  return ret_hash
end
