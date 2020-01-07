$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  results = {}
  director_counter=0
  while director_counter<nds.size
      movie_counter=0
      total=0
      while movie_counter < nds[director_counter][:movies].size
        total+=nds[director_counter][:movies][movie_counter][:worldwide_gross]
        movie_counter+=1
      end
      results[nds[director_counter][:name]]= total
      director_counter+=1

  end

  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  results
end
