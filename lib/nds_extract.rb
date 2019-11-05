$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  
  nds.length.times do |cycle_directors|
    result[nds[cycle_directors][:name]] = gross_for_director(nds[cycle_directors])
  end
  return result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  director_gross = 0
  director_data[:movies].length.times do |cycle_titles|
    director_gross += director_data[:movies][cycle_titles][:worldwide_gross]
  end
  return director_gross
end
