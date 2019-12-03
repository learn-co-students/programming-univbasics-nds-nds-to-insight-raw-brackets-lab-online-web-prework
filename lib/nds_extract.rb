$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'


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
 def directors_totals(nds)
  result = {}
  nil
  count = 0
  while count < nds.size do
    director = nds[count]
    result[director[:name]] = gross_for_director(director)
    count += 1
  end
  result
end
def gross_for_director(director_data)
  count = 0
  total = 0
  while count < director_data[:movies].length do
  total += director_data[:movies][count][:worldwide_gross]
  count += 1
  end
total
end