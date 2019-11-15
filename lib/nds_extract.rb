require 'directors_database'
require 'pp'

def directors_totals(nds)
  # pp nds
  result = {}
  
  director_index = 0 
  while director_index < nds.length do 
    director_name = nds[director_index]
    result[director_name[:name]] = gross_for_director(director_name)
    director_index += 1 
  end
  result
end

def gross_for_director(director_data)
  director_total = 0 
  i = 0 
  while i < director_data[:movies].length do 
    director_total += director_data[:movies][i][:worldwide_gross]
    i += 1 
  end
  director_total
end
