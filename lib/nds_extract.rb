$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
#===============================  

director_array = Array.new
total_array = Array.new
new_aoh = {}
count = 0
directors = nds.to_a.size

#===============================

  nds.each { |n| 
    director_array << n[:name].to_s}
  
directors.times {
  nds[count][:movies].each { |n| 
      total_array << n[:worldwide_gross] 
      new_aoh[director_array[count]] = total_array.sum.to_i}
  total_array.clear
  count += 1}

p new_aoh
end

directors_totals(directors_database)

#========================================================================================
#
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the

  # Be sure to return the result at the end!
  
   # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  
