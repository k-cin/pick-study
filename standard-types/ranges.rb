enum = (1..10).to_enum; puts enum
list = ('bar'...'bat').to_a; p list
('a'..'z').each { |c| print c }
range = 1..10
p range.inject(&:*)
p range.max
p range.include?(5)

(1..10) === 5        # => true
(1..10) === 3.14385  # => true
(1..10) === 15       # => false

val = 9.5
case val
when 1..9 then puts 'one through nine'
when 10..50 then puts 'ten through fifty'
when 70..100 then puts 'seventy through a hundred'
else p 'not found'
end
