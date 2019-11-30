$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)

  r_hash = {}
  
  # Begin Traversal of the NDS by traversing into the Outer Array via Outer Index (Responsible for selecting different Directors)
  directors_database.length.times do |outer_idx|

  # Initialize Variables for Directors Name and Grand Total of Worldwide Gross Profits
    directors_name = ""
    grand_total = 0
    
  # Store Current Directors name in a variable
    directors_name = directors_database[outer_idx][:name]
    selected_movies = directors_database[outer_idx][:movies]
    
  # Begin Traversal of the Inner NDS by traversing into the inner movies array via Inner Index 
  # (Responsible for selecting different Movies from specified Director)
    selected_movies.length.times do |inner_idx|
      # Add current movie's Worldwide Gross value to the value of grand_total and store in grand_total variable.
      grand_total += selected_movies[inner_idx][:worldwide_gross]
    end
    
  # Create a key,value pair in the hash r_hash in preperation for returning this data out of the method.
    r_hash[directors_name] = grand_total
  end
  r_hash
end
