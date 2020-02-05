$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input


def gross_for_director(director_data)
    counter = 0 
    gross_revenue = 0 
    
    while director_data[:movies].length > counter do 
      gross_revenue +=  director_data[:movies][counter][:worldwide_gross]
      counter += 1 
    end
  gross_revenue
end


# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  dir_counter = 0 
  results = {}
  
  while nds.length > dir_counter do 
    this_result = nds[dir_counter][:name]
    results[this_result] = gross_for_director(nds[dir_counter])
    dir_counter += 1 
    end
    results
end
