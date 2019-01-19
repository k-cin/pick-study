class Name
  attr_reader :first, :last

  def first=(first)
    if first.nil? || first.empty?
      raise ArgumentError, 'Everyone must have a first name.'
    end

    @first = first.capitalize
  end

  def last=(last)
    if last.nil? || last.empty?
      raise ArgumentError, 'Everyone must have a last name.'
    end

    @last = last.capitalize
  end

  def initialize(first, last)
    self.first = first
    self.last = last
  end
end

johnny = Name.new('johnny', 'seed')
puts johnny.first
puts johnny.last
johnny.last = nil
