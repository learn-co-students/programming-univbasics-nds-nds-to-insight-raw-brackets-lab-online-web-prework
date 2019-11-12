$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  
row_index = 0

while row_index < nds.count do
 directors_name = nds[row_index][:name]
  # The directors_name is a variable of all the directors in the nds.
  
  movies = nds[row_index][:movies].sum
  # The movies variable show the names of all the movies.
 
    # movies[row_index][:worldwide_gross]
# directors_gross = movies[row_index][:worldwide_gross]
# The directors_gross is a variable of the sum of all of each directors movies.

# totals = {directors_name => directors_gross}
# totals is a hash combining the two varaibles.

  row_index += 1
pp movies
end

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
  nil
end
