$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  hash = {}
  dirs = 0
  while dirs < nds.count do
    earnings = 0
    movs = 0
    while movs < nds[dirs][:movies].count
      earnings += nds[dirs][:movies][movs][:worldwide_gross]
      movs += 1
    end
    hash[nds[dirs][:name]] = earnings
    dirs += 1
  end
  hash

  
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  #result = {
  #}
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  #nil
end
