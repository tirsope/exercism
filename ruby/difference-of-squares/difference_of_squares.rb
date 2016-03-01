class Squares
  attr_reader :number

  def initialize number
    @number = number
  end

  def square_of_sums
    calculate(:sum => false) ** 2
  end

  def sum_of_squares
    calculate :sum => true
  end

  def difference
    square_of_sums - sum_of_squares
  end

  def calculate args
    (1..number).inject { |sum, n| sum += args[:sum] ? n ** 2 : n }
  end
end