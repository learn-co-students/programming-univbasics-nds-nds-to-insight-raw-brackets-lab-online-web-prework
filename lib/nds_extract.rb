$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  # result = {
  # }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  d = 0
  results = {}
  while d < nds.length do
    m = 0
    total = 0
    while m < nds[d][:movies].length do
      # puts nds[d][:movies][m][:worldwide_gross]
      total += nds[d][:movies][m][:worldwide_gross]
      m += 1
    end
    results[nds[d][:name]] = total
    # binding.pry
    d += 1
  end
  results
end

directors_totals(directors_database)
