# This function will sort the numbers based on their weight. e;g 91 = 9+1 = 10
def order_weight(str)
  num_arr = str.split(' ')
  output = {}
  weight = 0
  num_arr.sort.each do |n|
    weight = 0
    n.split('').each do |n1|
      weight += n1.to_i
    end
    output[weight] = output.key?(weight) ?  output[weight] + " #{n}"  : output[weight] = n
  end
  (output.sort_by {|k,v| k}.to_h).values.join(' ')
end



# puts order_weight("56 65 74 100 99 68 86 180 90")
# puts order_weight("2000 11 11 123 1234000 44444444 9999 10003 22")
puts order_weight("56 65 74 100 99 68 86 90 180")
