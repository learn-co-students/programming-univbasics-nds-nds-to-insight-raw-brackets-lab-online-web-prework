$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'

def directors_totals(nds)
  # binding.pry
  # {directorName => earnings ...}
  counter = 0
  new_hash = {}
  
  while counter < nds.length do
    total_gross = 0
    name = nds[counter][:name]
    movies = nds[counter][:movies]
    index = 0
    while index < movies.length do
      directors_earnings = movies[index][:worldwide_gross]
      total_gross += directors_earnings
      index += 1    
    end
      new_hash[name] = total_gross
      # Store directors earnings
      counter += 1
  end
      
      new_hash
end



# directors_database[0][:name] = "Stephen Spielberg"
# pp directors_database[3][:name] = "Spike Lee"
# pp directors_database[3][:movies][3][:title] = "The Original Kings of Comedy"
# pp directors_database[3][:movies][3][:worldwide_gross] = 38,182,790
