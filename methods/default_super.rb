# Use more methods in your code (and classes/modules)
def surround(word = 'Linus Torvalds', pad_length = word.length / 2)
  puts '[' * pad_length + word + ']' * pad_length
end

# last can't have default value
class Parent
  def do_something(name, age, sex)
    @name = name
    @age = age
    @sex = sex
    p "#{name} #{age} #{sex}"
  end
end

class Child < Parent
  def do_something(*splat)
    super
  end
end

surround('Star Wars')
Child.new.do_something('Carol', 51, 'F')
