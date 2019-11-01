$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'

def directors_totals(nds)
  hash = {}
  nds.each do |director_hash| 
    total = 0
    director_hash[:movies].each do |movie|
        total += movie[:worldwide_gross]
    end
    hash[director_hash[:name]] = total
   # binding.pry
  end 
  hash
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