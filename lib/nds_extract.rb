$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  {
   ["Martin_Scoressee"=>950000,
    "Quinten_Tarentino"=>800000,
    "Spike_Lee"=>400000,
    "Tyler_Perry"=>700000,
    "Steven_Speilberg"=>600000]
    
    
    }
    
    # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
    [:director=>"Martin_Scoressee", :total =>950000, :director =>"Quinten_Tarentino", :total=>800000, :director =>"Spike_Lee",:total =>400000,:director =>"Tyler_Perry", :total =>"700000", :director =>"Steven_Speilberg", "total"=>600000]
  }
  
  row_index = 0
  while row_index<vm.length do
    puts "Row #{row_index} has #
    (vm[row_index]) columns"
    
    column_index=0
  while column_index<vm[row_index].length do
    coord = "#{row_index}. #
    {column_index}"
    inner_len = vm[row_index]
    [column_index].length
     puts "\tCoordinate [#{coord}] points to an #{vm[row_index][column_index].class} of length #{inner_len}"
 
    inner_index = 0
    while inner_index < inner_len do
      puts "\t\t (#{coord}, #{inner_len}) is: #{vm[row_index][column_index][inner_index]}"
      inner_index += 1
    end
 
    column_index += 1
  end
 
  row_index += 1
end
  
   Row 0 has [:director=>"Martin_Scoressee", :total =>950000, :director =>"Quinten_Tarentino", :total=>800000, :director =>"Spike_Lee",:total =>400000,:director =>"Tyler_Perry", :total =>"700000", :director =>"Steven_Speilberg", "total"=>600000] 
          Coordinate [0, 0] points to an Array of length 4
         (0, 0,4) is: {:director =>"Martin_Scoressee", :total =>0}
         (0, 1, 4) is: {:director =>"Quinten_Tarentino", :total =>1}
         (0, 2, 4) is: {:director =>"Spike Lee", :total =>2}
         (0, 3, 4) is: {:director =>"Tyler_Perry", :total =>3}
         (0,4,4) is: {:director =>"Steven Speilberg", :total =>4}
         
   
   
   grand_total = 0
row_index = 0
while row_index < vm.length do
  column_index = 0
  while column_index < vm[row_index].length do
    inner_len = vm[row_index][column_index].length
    inner_index = 0
    while inner_index < inner_len do
       spinner is full of Hashes with keys :director and :total
      grand_total += vm[row_index][column_index][inner_index][:total]
      inner_index += 1
    end
    column_index += 1
  end
  row_index += 1
end
 
p grand_total #=> 2,275,000
   
   # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  nil
end
