class Person
  include Comparable
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def to_s
    @name.to_s
  end

  def <=>(other)
    @name <=> other.name
  end
end

p1 = Person.new('Sally')
p2 = Person.new('Jimmy')
p3 = Person.new('Heather')

puts "#{p1.name}'s name is greater than #{p2.name}'s" if p1 > p2
[p1, p2, p3].sort.each { |person| puts person }
