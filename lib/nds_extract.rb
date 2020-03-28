$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
    row = 0
    directors_gross = 0
    new_hash = {}

  while row < nds.length

    movie = 0

      while movie < nds[row][:movies].length 
        #puts "#{nds[row][:movies][movie][:title]}"
        directors_gross += nds[row][:movies][movie][:worldwide_gross]
        #binding.pry
        movie +=1
      end
      #puts "#{nds[row][:name]}" "total:" "#{directors_gross}"
      new_hash[nds[row][:name]] = directors_gross
      #binding.pry

      directors_gross = 0
    row +=1
  end
  new_hash
end

# nds = directors_database
# directors_totals(nds)


  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  # result = {
  # }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
 

