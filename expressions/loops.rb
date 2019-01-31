count = 0
count += 1 while count < 10
count -= 1 until count == 0

file = File.open('ordinals.txt')
while line = file.gets
  puts line if line =~ /third/ .. line =~ /fifth/
end

begin 
  puts 'at least once'
end while false