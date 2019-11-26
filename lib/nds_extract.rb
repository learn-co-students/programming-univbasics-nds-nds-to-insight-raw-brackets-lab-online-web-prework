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
  index_1 = 0
  total_hash = {}
  while index_1 < directors_database.count do
    director_total = 0
    index_2 = 0
    while index_2 < directors_database[index_1][:movies].count do
      director_total += directors_database[index_1][:movies][index_2][:worldwide_gross]
      index_2 += 1
    end
    total_hash[directors_database[index_1][:name]] = director_total
    index_1 += 1 
  end
  total_hash
end
