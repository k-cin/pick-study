nums = %w[10 20 30 40 50 60 70 80 90 100 110]
puts nums[-1]
puts nums[-4]
neu = nums[0, 3]
p neu
neu = nums[3..5]
p neu
neu = nums[-1...-6]
p neu

nums[0, 3] = %w[1 2 3]
p nums
nums[7, 2] = 'Dog'
p nums

example = %w[1 2 3 4 5 6]
example[2, 2] = [7, 7, 7, 7]
p example
example[0..3] = []
p example


