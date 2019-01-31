class PowerOfTwo
  attr_reader :value
  def initialize(value)
    @value = value
  end

  def <=>(other)
    @value <=> other.value
  end

  def succ
    PowerOfTwo.new(@value + @value)
  end

  def to_s
    @value.to_s
  end
end

pot = PowerOfTwo.new(4)
pot2 = PowerOfTwo.new(32)
puts (pot..pot2).to_a


