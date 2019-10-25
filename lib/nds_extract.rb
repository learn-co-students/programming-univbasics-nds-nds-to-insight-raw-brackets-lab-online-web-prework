$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'


def directors_totals(nds)
  
  totals = {} 
  current_director = 0
  
  while current_director < nds.length do
    
    director_name = nds[current_director][:name] 
    totals[director_name] = 0
    current_movie = 0

    while current_movie < nds[current_director][:movies].length do
      totals[director_name] += nds[current_director][:movies][current_movie][:worldwide_gross] 
      current_movie += 1
    end  
  
    current_director += 1
  end
    
 totals
end
