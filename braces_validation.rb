
# function validate open and closed braces via switch
def validBrackets?(str)
  stack = []
  str.each_char do |char|
    case char
    when '{', '[', '('
      stack.push(char)

    when '}'
      x = stack.pop
      puts stack
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
  open_braces = ['{', '(', '[']
  close_braces = ['}', ')', ']']
  braces_hash = {'{' => '}', '[' => ']', '(' => ')'}
  br_arr = []
  braces.split('').each do |c|
    if open_braces.include? c
      br_arr << c
    else close_braces.include? c
      element = br_arr.pop
      return false if element != braces_hash.key(c)
    end
  end
  br_arr.empty?
end


puts 'result without using Switch '
puts valid_braces("([{}])")


