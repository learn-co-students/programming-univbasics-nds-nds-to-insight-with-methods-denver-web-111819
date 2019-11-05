require 'directors_database'

pp directors_database
def directors_totals(nds)
  directors = {}
  n = 0 
  gross = []
  director_names = []
  begin
    eachGross = 0
    yikes = directors_database[n][:movies]
    yikes.each{|key, value| eachGross += key[:worldwide_gross]}
    gross.push(eachGross)
    director_names.push(directors_database[n][:name])
    n += 1
  end while n < directors_database.length
  i = 0
  begin
    directors[director_names[i]] = gross[i]
    i += 1
  end while i < director_names.length
  p directors
end


def gross_for_director(director_data)
  someGross = 0
  director_data[:movies].each{|key| someGross += key[:worldwide_gross]}
  p someGross
end

