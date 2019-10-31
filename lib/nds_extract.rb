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
  result = {}
  row_index = 0 
  while row_index < nds.length do
    total = 0 
    # loop through movies of the director 
    movies_num = nds[row_index][:movies].length
    movies_index = 0 
    while movies_index < movies_num do 
      # add movie gross to total
      total += nds[row_index][:movies][movies_index][:worldwide_gross]
      movies_index += 1 
    end
    result[nds[row_index][:name]] = total # add key and value to result hash
    row_index += 1 
  end
  result
end
