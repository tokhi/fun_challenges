# String to hash with key and value, e.g; Hello => {0=>"H", 1=>"e", 3=>"l", 4=>"o"}

def to_hash(str)
 array = str.split('').zip(0..str.length())
 Hash[*(array.flatten)].invert
end

puts to_hash(ARGV[0])