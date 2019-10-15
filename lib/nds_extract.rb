$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  nil
  directors = [{:name "Georges" :value=> 1234567890},
  {:name "James" :value=> 1234577890}, {:name "Mason" :value=> 1234709136}]
  
  grand_total = 0
  row_index = 0
  while row_index < directors.length 
  do 
    column_index = 0 
    while column_index < directors[row_index].length
    do iner_len = directors[row_index][column_index].length
     inner_index = 0
     while inner_index < iner_len 
     do 
       grand_total += vm[row_index][column_index][inner_index][:price]
      inner_index += 1
    end
    column_index += 1
  end
  row_index += 1
end
p grand_total
