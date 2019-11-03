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

  count1 = 0

  while count1 < nds.length do
    gross = 0
    count2 = 0
    keyname = nds[count1][:name]

    while count2 < nds[count1][:movies].length do
      gross += nds[count1][:movies][count2][:worldwide_gross]
      count2 += 1
    end

    result[keyname] = gross
    count1 += 1

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

  result

end
