$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {}
  nds.each do |director_info|
    total = 0
    director_info[:movies].each do |movie|
      total += movie[:worldwide_gross]
    end #inner each
    result[director_info[:name]] = total
  end #outer each 
  result
end #method directors_totals

#pp directors_database

