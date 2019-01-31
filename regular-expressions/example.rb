/cat/ =~ 'The cat ran down the hallway' # => 4
/cat/ =~ 'catch'                        # => 0

phrase = 'now is the time!'
phrase.sub /now/, 'tomorrow'
phrase.gsub /\s+/, '+'
phrase.gsub! /\$+/, '*' # changes string in place, returns nil if no changes

pattern = /The Time/i
pattern = Regexp.new('The Time', 'i', 'u')
p pattern =~ phrase
