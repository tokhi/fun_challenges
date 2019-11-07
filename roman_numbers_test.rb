require 'test/unit'

class Numbers
  def self.to_roman(number)
  	# roman numerals: https://www.knowtheromans.co.uk/Categories/SubCatagories/RomanNumerals/RomanNumerals1-100/
    symbols = {1000 => "M",900 => "CM", 500 => "D",400 => "CD", 100 => "C",90 => "XC", 50 => "L",40 =>"XL", 10 => "X",9 => "IX", 5 => "V",4 => "IV",  1=> "I"}
    roman_chars = []
    symbols.each do |key, value|
      while key <= number
        roman_chars.append(value)
        number -= key
      end
    end
    roman_chars.join('')
  end

end




class RomanNumbersTest < Test::Unit::TestCase

  def test_to_roman
    assert_equal('XXXVI', Numbers.to_roman(36))
    assert_equal('LXXVIII', Numbers.to_roman(78) )
    assert_equal('LXXXVI', Numbers.to_roman(86))
    assert_equal('XCV', Numbers.to_roman(95))
    assert_equal('LXVI', Numbers.to_roman(66))
    assert_equal('XXVI', Numbers.to_roman(26))
    assert_equal('MCMLXVI', Numbers.to_roman(1966))
  end
end