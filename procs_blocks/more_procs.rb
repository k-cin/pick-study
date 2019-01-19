def my_if(condition, then_clause, else_clause)
  if condition
    then_clause.call
  else
    else_clause.call
  end
  end

# Blocks can be passed as arguments

5.times do |value|
  my_if(value < 2, -> { puts "#{value} is small" }, -> { puts "#{value} is big" })
end

def my_while(cond)
  yield while cond.call
end

a = 0
my_while(-> { a < 3 }) do
  p a
  a += 1
end
