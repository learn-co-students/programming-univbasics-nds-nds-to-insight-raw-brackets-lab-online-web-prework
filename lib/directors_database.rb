require 'yaml'
require 'pp'
def directors_database
	rot13 = -> (s) { s.tr('A-Za-z', 'N-ZA-Mn-za-m') }
  @_db ||= YAML.load(rot13.call(File.open("directors_db").read.to_s))
end

def print_director_movie_total 
director_movie_total = directors_database [][:name]
counter = 0
while counter < director_movie_total.count do
  puts director_movie_total[counter][:worldwide_gross]
  counter +=1 
end 
end 