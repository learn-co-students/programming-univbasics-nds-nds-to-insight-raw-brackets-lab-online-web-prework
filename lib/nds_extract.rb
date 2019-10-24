$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  directors = directors_database
  result = {}
  total = 0
  dir_index = 0
  while dir_index < directors.length do
    movie_index = 0
    while movie_index < directors[dir_index][:movies].length do
    total += directors[dir_index][:movies][movie_index][:worldwide_gross]
    movie_index += 1
    end
    result[directors[dir_index][:name]] = total
    total = 0
    dir_index += 1
  end
  result
end
