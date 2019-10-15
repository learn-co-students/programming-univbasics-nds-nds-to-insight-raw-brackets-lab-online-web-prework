$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  result = {
    "Stephen Spielberg" => 0,
    "Russo Brothers" => 0,
    "James Cameron" => 0,
    "Spike Lee" => 0,
    "Wachowski Siblings" => 0,
    "Robert Zemeckis" => 0,
    "Quentin Tarantino" => 0,
    "Martin Scorsese" => 0,
    "Francis Ford Coppola" => 0
  }
  
  movie_index = 0
  
  while movie_index < nds[0][:movies].length do
    result["Stephen Spielberg"] += nds[0][:movies][movie_index][:worldwide_gross]
    movie_index += 1
  end
  
   movie_index = 0
  
  while movie_index < nds[1][:movies].length do
    result["Russo Brothers"] += nds[1][:movies][movie_index][:worldwide_gross]
    movie_index += 1
  end
  
  movie_index = 0
  
  while movie_index < nds[2][:movies].length do
    result["James Cameron"] += nds[2][:movies][movie_index][:worldwide_gross]
    movie_index += 1
  end

  movie_index = 0
  
  while movie_index < nds[3][:movies].length do
    result["Spike Lee"] += nds[3][:movies][movie_index][:worldwide_gross]
    movie_index += 1
  end
  
  movie_index = 0
  
  while movie_index < nds[4][:movies].length do
    result["Wachowski Siblings"] += nds[4][:movies][movie_index][:worldwide_gross]
    movie_index += 1
  end
  
  movie_index = 0
  
  while movie_index < nds[5][:movies].length do
    result["Robert Zemeckis"] += nds[5][:movies][movie_index][:worldwide_gross]
    movie_index += 1
  end
  
  movie_index = 0
  
  while movie_index < nds[6][:movies].length do
    result["Quentin Tarantino"] += nds[6][:movies][movie_index][:worldwide_gross]
    movie_index += 1
  end
  
  movie_index = 0
  
  while movie_index < nds[7][:movies].length do
    result["Martin Scorsese"] += nds[7][:movies][movie_index][:worldwide_gross]
    movie_index += 1
  end
  
  movie_index = 0
  
  while movie_index < nds[8][:movies].length do
    result["Francis Ford Coppola"] += nds[8][:movies][movie_index][:worldwide_gross]
    movie_index += 1
  end
  
  result
end
