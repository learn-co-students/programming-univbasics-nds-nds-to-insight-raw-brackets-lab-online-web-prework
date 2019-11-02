$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
def directors_totals(nds)
  outer_results = {}
  while row_index < nds.length do
    element_index = 0 
    inner_results = {}
    while element_index < nds[row_index].length do
      if nds[row_index][element_index][0]== [:name]
        inner_results << nds[row_index][element_index]
      end 
      element_index += 1 
    end 
    outer_results < inner_results
    row_index += 1 
  end
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
  
#     directors_totals[:name]
# name_total = {}
# row_index = 0
# while row_index < directors_totals.length do
#   element_index = 0
#   while element_index < directors_totals[row_index].length do
#     inner_len = directors_totals[row_index][column_index].length
#     inner_index = 0
    
#     while inner_index < inner_len do
#         total += directors_totals[row_index][column_index][inner_index][:name]
#       inner_index += 1
#     end
#     column_index += 1
#   end
#   row_index += 1
# end
#   p name_totals{}