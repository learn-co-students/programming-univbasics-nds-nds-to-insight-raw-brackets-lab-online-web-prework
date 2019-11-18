$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  result = {
  }
  
  outer_array = 0
  #Iterates over directors names
  while outer_array < directors_database.length do 
    director_name = directors_database[outer_array][:name]
    
    #Reset counters
    inner_array = 0
    totals = 0 
    
    #Iterates over movie grosses and adds them 
    while inner_array < directors_database[outer_array][:movies].length do 
      totals += directors_database[outer_array][:movies][inner_array][:worldwide_gross]
      inner_array += 1
    end
  
    #Appends data to hash
    result[director_name] = totals
    outer_array += 1
  end
return result
end