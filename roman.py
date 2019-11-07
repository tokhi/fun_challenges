#!/usr/bin/python3
import unittest
def to_roman(number):
	# roman numerals: https://www.knowtheromans.co.uk/Categories/SubCatagories/RomanNumerals/RomanNumerals1-100/
	symbols = {1000 : "M",900 : "CM", 500 : "D",400 : "CD", 100 : "C",90 : "XC", 50 : "L",40 :"XL", 10 : "X",9 : "IX", 5 : "V",4 : "IV",  1: "I"}
	roman_chars = list()
	for key, value in symbols.items():
		while key <= number:
			roman_chars.append(value)
			number -= key

	return ''.join(roman_chars)

print("to_roman", to_roman(36))



class TestStringMethods(unittest.TestCase):

    def test_roman_numbers(self):
        self.assertEqual(to_roman(36), 'XXXVI')
        self.assertEqual(to_roman(78), 'LXXVIII')
        self.assertEqual(to_roman(86), 'LXXXVI')
        self.assertEqual(to_roman(95), 'XCV')
        self.assertEqual(to_roman(66), 'LXVI')
        self.assertEqual(to_roman(26), 'XXVI')
        self.assertEqual(to_roman(1966), 'MCMLXVI')

if __name__ == '__main__':
    unittest.main()
