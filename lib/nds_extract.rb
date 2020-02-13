$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'
require 'pp'

def directors_totals(nds)
  pp nds
  result = {}
  row_index = 0
  while row_index < nds.length do
    name = nds[row_index][:name]
    column_index = 0
    gross = 0
    while column_index < nds[row_index][:movies].length do 
      gross += nds[row_index][:movies][column_index][:worldwide_gross]  
      column_index += 1 
    end 
    result[name] = gross
    row_index += 1 
  end
result 
end