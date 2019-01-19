alpha = 'First'
omega = alpha

alpha.is_a?(omega.class) ? 'same' : 'not the same'
alpha.is_a?(String) ? "It's a String" : "It's not a String"
alpha.object_id == omega.object_id ? 'same id' : 'not the same id'

person1 = 'Tim'
person2 = person1
person2[0] = 'J'
puts person1 # => 'Jim'

name1 = 'Cindy'
name2 = name1.dup
name2[0] = 'M'
puts name1 # => 'Cindy'

name1.freeze # => object can no longer be changed
