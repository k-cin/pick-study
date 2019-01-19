h = { color: 'green', make: 'ford', model: 'ranger' }
a = [10, 20, 30, 40, 50, 60, 70]

enum_h = h.to_enum
enum_a = a.to_enum

p enum_h.next    # [:color, "green"]
p enum_a.next    # 10
p enum_h.next    # [:make, "ford"]
p enum_a.next    # 20

loop do
  puts "#{enum_h.next} - #{enum_a.next}" # [:model, "ranger"] - 30
end

result = []
'hello'.each_char.with_index do |char, index|
  result << [char, index]
end
puts result[2][1] # 2

enum = 'cat'.enum_for(:each_char)
p enum.to_a             # ['c', 'a', 't']
enum_in_threes = [1, 2, 3, 4, 5, 6, 7, 8, 9].enum_for(:each_slice, 3)
p enum_in_threes.to_a   # [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
