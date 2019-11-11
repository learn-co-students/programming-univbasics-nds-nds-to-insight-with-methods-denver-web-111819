require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  #binding.pry
  result = {}
  
  row_index = 0
  while row_index < nds.length do
    director = nds[row_index][:name]
    movies = nds[row_index][:movies] 
    movie_index = 0
    revenue_all = 0

    while movie_index < movies.length do
      revenue_current = movies[movie_index][:worldwide_gross]
      revenue_all += revenue_current
      movie_index += 1
    end
    result[director] = revenue_all

    row_index += 1
  end

  binding.pry

  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  director_data.values.sum
end

#"Jean-Pierre Jeunet" => "222312123123"