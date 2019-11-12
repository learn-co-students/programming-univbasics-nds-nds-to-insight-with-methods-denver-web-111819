require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  #puts nds
  
  director_idx = 0
  idx = 0
  #puts db[0][:movies].length
  
  while director_idx < nds.length do 
    director_total = 0
    idx = 0
    name = nds[director_idx][:name]
    puts nds[director_idx][:name]
    
    result[name] = gross_for_director(nds[director_idx])
    director_idx +=1
    
  end
  
  return result
  
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  idx = 0
  total = 0
  puts director_data
  
  while idx < director_data[:movies].length do
    #puts idx
    puts director_data[:movies][idx][:title] 
    puts director_data[:movies][idx][:worldwide_gross]
    total += director_data[:movies][idx][:worldwide_gross]
    #puts result
    #puts total
    idx += 1
  end
  
  puts total
  total
  
  
end
