$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
nds = directors_database()

def directors_totals(nds)
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {}
  nds.each do |direct|
    name = direct[:name]
    money = 0
    direct[:movies].each do |movie|
      money += movie[:worldwide_gross]
    end
    result[name] = money
  end
  result
end
