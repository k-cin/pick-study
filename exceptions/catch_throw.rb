f = File.open('words.txt')

word_in_error = catch (:done) do
  words = []

  while line = f.gets
    word = line.chomp
    throw :done, word unless word =~ /^\w+$/
    words << word
  end

  puts words.reverse
end

if word_in_error
  puts "Failed: '#{word_in_error}' found, either a non-word or unclean"
end

def prompt_and_get(prompt)
  print prompt
  res = readline.chomp
  throw :quit if res == '!'
  res
end
​
catch :quit do
  name = prompt_and_get('Name: ')
  age = prompt_and_get('Age: ')
  sex = prompt_and_get('Sex: ')
end
​ 
