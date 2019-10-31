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
  totals_by_director = {}
  for director in 0...nds.size()
    totals_by_director[nds[director][:name]] = 0
    for movie in 0...nds[director][:movies].size()
      totals_by_director[nds[director][:name]] += nds[director][:movies][movie][:worldwide_gross]
    end
  end
  p totals_by_director
end
