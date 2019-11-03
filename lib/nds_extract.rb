require 'pp'
require 'pry'

$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

pp directors_database

def directors_totals(nds)

new_hash = {}
  
  nds.each {|director|
  total = 0 
  index1 = 0
  movies = director[:movies]
  
  while index1 < movies.length do 
    total += movies[index1][:worldwide_gross]
    index1 += 1

  end
    new_hash[director[:name]] = total
   }   
     
  new_hash
end
