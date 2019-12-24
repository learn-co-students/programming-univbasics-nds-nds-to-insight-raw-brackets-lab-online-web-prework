$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # pp nds
directors_totals = {} #returns a hash describing directors_totals- so I made a new hash
 row_index = 0 #This row_index iterate thorugh the whole array
 while row_index < nds.length do
  directors_name = nds[row_index][:name] # this pulls the values out of name hash array and sets equal it the new variable
  directors_totals[directors_name] = 0 #set that result to the directors_totals hash
  movie_index = 0 #This is a counter method that loops through all of the movie hashes
  while movie_index < nds[row_index][:movies].length do
  directors_totals[directors_name] += nds[row_index][:movies][movie_index][:worldwide_gross]
  movie_index += 1
  end
  row_index += 1
end
directors_totals
end
