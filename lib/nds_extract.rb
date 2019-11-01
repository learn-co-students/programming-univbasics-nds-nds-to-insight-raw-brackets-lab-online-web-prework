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
  
  row_index = 0
  
  while row_index < directors_database.length do
    director = directors_database[row_index][:name]
    direct_total = 0
    movie_index = 0 
  
    while movie_index < directors_database[row_index][:movies].length do 
      direct_total += directors_database[row_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1 
    end
  
    result[director] = direct_total
    row_index += 1 
  end
  
  result
  
end
