3.times do |num|
  puts num
end

0.upto(9) do
  puts 'Hey'
end

9.downto(0) do |num|
  puts num
end

0.step(9, 3) { |x| puts x }

loop do
  puts 'wee'
  break
end

(1..4).each do |i|
  count = i
end

[1, 2, 3, 4, 5].each do |i|
  count = i
end

class Periods
  include Enumerable
  def each
    yield 'Classical'
    yield 'Jazz'
    yield 'Rock'
  end
end

periods = Periods.new
periods.each { |x| puts x}