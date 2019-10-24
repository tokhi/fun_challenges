# multipies of x and y under the given number
def multiplies_of(number, x, y)
  sum = 0
  for x in 1..number-1
    sum+= x if x%3 == 0 || x%5==0
  end
  sum
end

puts multiplies_of(ARGV[0], ARGV[1])