# replace each word with its length and return the reverse array
# example: 'I like to code' -> [4, 2, 4, 1]
def reverse_chain(str)
	str.split(' ').map{|e| e.length()}.reverse
end

print reverse_chain(ARGV[0])