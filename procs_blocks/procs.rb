# Procs must be called
def create_block_object(&block)
  block
end

bo = create_block_object { |param| puts "The log10 of param is #{Math.log10(param)}" }
bo.call(77)

log10 = ->(param) { puts "The log10 of param is #{Math.log10(param)}" }
log10.call(77)

third = proc { |param| puts "The log10 of param is #{Math.log10(param)}" }
third.call(77)

proc1 = lambda do |a, *b, &c|
  puts "a == #{a.inspect}"
  puts "b == #{b.inspect}"
  c.call
end

proc1.call(1, 2, 3, 4) { puts 'inside block1' }
functional = proc { |x, y, z| puts x * y * z }
functional.call(10, 20, 30)
