
public

DIVIDERS = [
  1000,
  500,
  100,
  50,
  10,
  1
]

ROMAN_NUMBERS = {
  'M' => 1000,
  'D' => 500,
  'C' => 100,
  'L' => 50,
  'X' => 10,
  'V' => 5,
  'I' => 1
}

def to_roman
  digits = self.to_s.chars.map { |digit| digit.to_i }

  n_digits = digits.count - 1
  divider = 10 ** n_digits

  digits.each.inject('') do |roman, n|
    if ROMAN_NUMBERS.has_value?(n * divider)
      roman << ROMAN_NUMBERS.key(n * divider)
    else
      if n < 6 and 5 - n == 1
        roman << ROMAN_NUMBERS.key(divider - 1) + ROMAN_NUMBERS.key(5 * divider)
      elseif n > 6
        roman << ROMAN_NUMBERS.key(5 * divider) + ROMAN_NUMBERS.key(divider) * n
      else
        roman << ROMAN_NUMBERS.key(divider) * n
      end
    end
  end
end
