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

  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  row_index = 0
  director_total = 0

  while row_index < director_data[:movies].length do
    director_total += director_data[:movies][row_index][:worldwide_gross]
  
    row_index += 1
  end

  director_total
end

# director_total is this:
# {:name=>"Stephen Spielberg",
#   :movies=>
#    [{:title=>"Jaws", :studio=>"Universal", :worldwide_gross=>260000000, :release_year=>1975},
#     {:title=>"Close Encounters of the Third Kind",
#      :studio=>"Columbia",
#      :worldwide_gross=>135189114,
#      :release_year=>1977},
#     {:title=>"Raiders of the Lost Ark",
#      :studio=>"Paramount",
#      :worldwide_gross=>248159971,
#      :release_year=>1981},
#     {:title=>"E.T. the Extra-terrestrial",
#      :studio=>"Universal",
#      :worldwide_gross=>435110554,
#      :release_year=>1982},
#     {:title=>"Schindler's List",
#      :studio=>"Universal",
#      :worldwide_gross=>96898818,
#      :release_year=>1993},
#     {:title=>"Lincoln", :studio=>"Buena Vista", :worldwide_gross=>182207973, :release_year=>2012}]}