$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

#gross 
#puts directors_database[index1][:movies][index2][:worldwide_gross]  
#dir name 
#puts directors_database[index1][:name]


  

def directors_totals(nds)
  directors_totals = {}
  index1 = 0 
  row_index = 0 
  while row_index < nds.length do 
    dir_name = nds[row_index][:name]
    column_index = 0 
    dir_total = 0 
  #this is where we will pull the name from [:name]
    while column_index < nds[row_index][:movies].length do 
      dir_gross = nds[row_index][:movies][column_index][:worldwide_gross]
      dir_total += dir_gross
      column_index += 1 
      # puts "row is #{row_index} column is #{column_index}"
    end 
    directors_totals[dir_name] = dir_total
    row_index += 1 
  end 
 puts directors_totals
 directors_totals
end


directors_totals(directors_database)

