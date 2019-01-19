stack = []
stack.push 'green'
stack.push 'red'
stack.push 'orange'
stack.pop
stack.pop
p stack

queue = []
queue.push 'yellow'
queue.push 'pink'
queue.push 'blue'
puts queue.shift
queue.shift
p queue

nums = %w[1 2 3 4 5 6 7 8 9]
p nums.first(3)
p nums.last(3)
nums.unshift(100)
nums.unshift(200)
p nums
