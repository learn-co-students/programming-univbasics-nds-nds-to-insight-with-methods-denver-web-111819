require 'directors_database'
require 'pp'
require 'pry'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  total=[]
  row=0
    while row<nds.length do
      column=0
      total[row]=0
      while column<nds[row][:movies].length do
        total[row]+=nds[row][:movies][column][:worldwide_gross]
        column+=1
      end
      result.merge!(nds[row][:name]=>total[row])
      row+=1
    end
  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  # pp director_data
  # binding.pry
  gross=0
  mov_num=0
  while mov_num<director_data[:movies].length do
    gross+=director_data[:movies][mov_num][:worldwide_gross]
    mov_num+=1
  end
  gross
end
