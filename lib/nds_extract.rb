require 'pp'
require 'pry'
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)

 result = {}
  row_index = 0 
  while row_index < nds.length do 
    
    name = nds[row_index][:name]
    
    result[name] = 0 
    
    column_index = 0 
    
    while column_index < nds[row_index][:movies].length do  
      result[name] += nds[row_index][:movies][column_index][:worldwide_gross]
      
      column_index += 1 
    end
    
    row_index += 1 
  end
result 
end
