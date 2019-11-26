require 'pry'
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
 #binding.pry 
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  
  
  result = {
  }
  
  row_index = 0 
  while row_index < nds.length do 
    director = nds[row_index][:name]
    directors_movies = nds[row_index][:movies]
    inner_index = 0 
    gross_total = 0 
    while inner_index < directors_movies.length do 
      gross_total += directors_movies[inner_index][:worldwide_gross]
      result[director] = gross_total
      inner_index += 1   
    end
    #binding.pry 
    row_index += 1 
  end
  
  
  nil 
  result
  
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  
end
