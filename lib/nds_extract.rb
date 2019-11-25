$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'
# pp directors_database


def directors_totals(nds)
  # binding.pry
  new_hash = {}
  row_index = 0 
   
  while row_index < nds.length do
      new_index = 0 
      new_hash[nds[row_index][:name]] = 0   
      
      while new_index < nds[row_index][:movies].length do 
          new_hash[nds[row_index][:name]] += (nds[row_index][:movies][new_index][:worldwide_gross])
          new_index += 1
      end
      row_index += 1 
  end
  new_hash
end
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  

  
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  

