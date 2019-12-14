$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  result = {
  }
  outer_index = 0 
  while outer_index < directors_database.count do 
    inner_index = 0 
    movies_total = 0 
    while inner_index < directors_database[outer_index][:movies].count do 
      movies_total += directors_database[outer_index][:movies][inner_index][:worldwide_gross]
      inner_index += 1 
    end 
    result[directors_database[outer_index][:name]] = movies_total
    outer_index += 1 
  end 
  
  result
  
end
