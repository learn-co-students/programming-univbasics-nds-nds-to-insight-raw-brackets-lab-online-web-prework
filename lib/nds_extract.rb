$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
require 'pry'

def directors_totals(nds)
 # sets index to 0
 index = 0
 
 # let's us access our inner hash
# mov_len = nds[index][:movies]
 
 total = {}
 
 # creates new hash to store our informaton
 info = {}
 test_count = 0

 # loops through the entire database
 while index < nds.length do
   
  # sequences through our director names
  director = nds[index][:name]
  total[director] = 0
   
  # loops through each directors movies
  inner_index = 0
  gross_total = 0
  while inner_index < nds[index][:movies].length do
   
    # binding.pry
    # arithematic to total our worldwide_gross's
    total[director] += nds[index][:movies][inner_index][:worldwide_gross]
    
    # increments our inner while loop
    inner_index += 1
    
  end
    
  # total.push(gross_total)
  
  # pushes our information to the new hash
  # info[director] = total[test_count]
  
  #increments outer while loop
  index += 1
  test_count += 1
 end

 
 # prints out hash information
  # p info
 # test for totals
 p total
 total
end
