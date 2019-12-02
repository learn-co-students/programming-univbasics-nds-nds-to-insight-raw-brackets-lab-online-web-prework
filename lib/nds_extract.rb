$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

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
  row = 0 
  while row < nds.length do 
    gross = 0 
    column = 0 
    name = nds[row][:name]
    while column < nds[row][:movies].length do
      gross += nds[row][:movies][column][:worldwide_gross]
      column += 1 
    end 
    result[name] = gross 
    row += 1 
  end 
  result 
end

pp directors_database