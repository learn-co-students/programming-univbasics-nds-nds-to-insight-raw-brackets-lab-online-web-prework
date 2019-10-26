$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  # pretty_nds = pp nds
  directors_totals = {}
  row_index = 0
  
  while row_index < nds.count do
    director_name = nds[row_index][:name]
    director_movies = nds[row_index][:movies]
    movie_total = 0
    movie_row_index = 0
    
    while movie_row_index < director_movies.count do
      movie_gross = director_movies[movie_row_index][:worldwide_gross]
       movie_total += movie_gross
      
      movie_row_index += 1
    end
    
    directors_totals[director_name] = movie_total
    row_index += 1
  end

  directors_totals
end
