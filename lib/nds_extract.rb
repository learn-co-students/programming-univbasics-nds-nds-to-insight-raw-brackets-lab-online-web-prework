$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  result = {}
  
  i = 0 
  while i < nds.length do 
    y = 0 
    total_money = 0
    movs = nds[i][:movies]
    while y < nds[i][:movies].length do 
    total_money +=  movs[y][:worldwide_gross]
    result[nds[i][:name]] = total_money
    y += 1
  end
    i += 1
  end   
 
 pp result
end
