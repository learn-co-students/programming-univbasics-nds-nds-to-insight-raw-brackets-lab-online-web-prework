$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
def directors_totals(nds)
total = {}
row_index = 0 
while row_index < nds.length do 
  puts nds[0]
  directors_name = nds[row_index][:name]
  column_index = 0 
  while column_index < directors_name.length do 
   movies = nds[row_index][:movies]
  directors_gross = movies[column_index][:worldwide_gross]
  return total
  row_index += 1 
  column_index += 1 
  pp directors_totals
end
end 
end 