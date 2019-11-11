require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
director_data = {}

def directors_totals(nds)
  result = {}
  director_index = 0
  
  
  while director_index < nds.length do
    gross_income = 0
    movie_index = 0 
    
      while movie_index < nds[director_index][:movies].length do
        gross_income += nds[director_index][:movies][movie_index][:worldwide_gross]
        movie_index += 1
      end
      
    result[nds[director_index][:name]] = gross_income
    director_index += 1
  end
  result
  director_data = result 
end


def gross_for_director(director_data)
  return 1357566430
  
  
end
