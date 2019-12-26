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
  i = 0
  len1 = directors_database.length
  while i < len1 do
    sum = 0
    j = 0
    len2 = directors_database[i][:movies].length 
    while j < len2 do
      sum += directors_database[i][:movies][j][:worldwide_gross]
      result[directors_database[i][:name]] = sum
      j += 1
    end
    i += 1
  end
  return result
  #nil
end
