# Blocks can be closures
def n_times(thing)
  ->(n) { thing * n }
end

# Another block closure
def power_proc_generator
  m = 1
  -> { m += m }
end

infinite_powers = Enumerator.new do |yielder|
  power_proc = power_proc_generator
  loop do
    yielder.yield(power_proc.call)
  end
end.lazy

closure = n_times(100)
closure.call(9)
first_twenty = infinite_powers.first(20)
first_twenty.each_slice(3) { |x| p x }
