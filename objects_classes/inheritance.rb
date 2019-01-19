class Parent
  def say_hello
    puts "Hello from #{self}"
  end
end

class Child < Parent
end

child = Child.new
child.say_hello

p Child.superclass          # => Parent
p Parent.superclass         # => Object
p Object.superclass         # => BasicObject
p BasicObject.superclass    # => nil
p Parent.ancestors.select { |x| x.class == Module } # => [kernel]
p __dir__
p global_variables
