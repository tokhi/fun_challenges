
# function validate open and closed braces via switch
def validBrackets?(str)
  stack = []
  str.each_char do |char|
    case char
    when '{', '[', '('
      stack.push(char)

    when '}'
      x = stack.pop
      return false if x != '{'
    when ']'
      x = stack.pop
      return false if x != '['
    when ')'
      x = stack.pop
      return false if x != '('
    end
  end
  stack.empty?
end

puts 'result Using Switch: '
puts validBrackets?("([{}])")

# function validate braces without using switch
def valid_braces(braces)
  braces_hash = {'{' => '}', '[' => ']', '(' => ')'}
  br_arr = []
  braces.split('').each do |c|
    if braces_hash.keys.include? c
      br_arr << c
    else braces_hash.values.include? c
      element = br_arr.pop
      return false if element != braces_hash.key(c)
    end
  end
  br_arr.empty?
end


puts 'result without using Switch '
puts valid_braces("([{}])")


