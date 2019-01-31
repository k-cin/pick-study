1 == 1.0               # => true
'name'.equal?('name')  # => false
'name'.eql?('name')    # => true

name = 'name'
name_two = name
name.equal?(name_two)  # => true

10 <=> 1  # => 1
1 <=> 10  # => -1
1 <=> 1   # => 0

class T
  attr_accessor :value
  def ==(other)
    @value == other
  end

  def !=(other)
    @value != other
  end

  def <=>(other)
    @value <=> other
  end
end

t = T.new
t.value = 10

t == 26   # => false
t == 10   # => true
t <=> 99  # => -1
t != 8    # => true
