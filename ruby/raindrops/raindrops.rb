class Raindrops
  # Prime factors
  NUMBERS = [3, 5, 7]
  # Message associated to a number
  MESSAGES = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }

  def self.convert(number)
    result = ''
    if number == 1
      result = number.to_s
    else
      NUMBERS.each do |n|
        result += number % n == 0 || (n == number && NUMBERS.include?(number)) ? MESSAGES[n] : ''
      end
      result = result != '' ? result : number.to_s
    end
    result
  end
end
