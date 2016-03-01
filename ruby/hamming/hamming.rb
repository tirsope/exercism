class Hamming
  #Version
  VERSION = 1

  def self.compute(strand1, strand2)
    # Raise an exception if the strands are not the same length
    raise ArgumentError unless strand1.length == strand2.length

    # Calculate the Hamming distance
    strand1.chars.reject.each_with_index { |x, i| x == strand2[i] }.count
  end
end