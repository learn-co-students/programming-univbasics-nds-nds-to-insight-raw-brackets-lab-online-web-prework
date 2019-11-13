$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  
row_index = 0
gross = {}
while row_index < nds.length do
directors_name = nds[row_index][:name]
  # The directors_name is a variable of all the directors in the nds.
gross[directors_name] = 0 
# This takes the variable directors_name, adds it into the gross hash and gives it a value of 0 as a counter.
 movies = nds[row_index][:movies]
  # The movies variable show the names of all the movies.
 element_index = 0 
 
 while element_index < movies.length
 gross[directors_name] += movies[element_index][:worldwide_gross]
 
 element_index += 1 
 end
 
  row_index += 1
end

pp gross
end
