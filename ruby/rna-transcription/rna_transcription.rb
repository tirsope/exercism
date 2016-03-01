class Complement
  VERSION = 2

  #hash of complements
  @complements = {
    "G" => "C",
    "C" => "G",
    "T" => "A",
    "A" => "U"
  }

  def self.of_dna strand
    @strand = strand
    convert(true)
  end

  def self.of_rna strand
    @strand = strand
    convert()
  end

  def self.convert type = false
    # false : dna, true: rna
    result = ""
    @strand.to_s.each_char do |chr|
      raise ArgumentError unless (type && @complements.has_key?(chr)) || (!type && @complements.has_value?(chr))
      result += type ? @complements[chr] : @complements.key(chr)
    end
    result
  end
end