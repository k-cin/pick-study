s = %(here is a double quote string)
p s.inspect
p s.encoding

def parse(file_name)
  song = Struct.new(:length, :name, :title)
  file = File.open(file_name)
  songs = []

  file.each do |line|
    line.squeeze!(' ')
    file, length, name, title = line.chomp.split(/\s*\|\s*/)
    min, sec = length.scan(/\d+/)
    length = (min.to_i * 60) + sec.to_i
    songs << song.new(length, name, title)
  end
  songs
end

parse('songdata').each { |song| puts song }

'John Apple'.scan /\w+/    # => ["John", "Apple"]
'John Apple'.split(/ohn/)  # => ["J", " Apple"]
'cruel world'.scan(/\w+/) # => ["cruel", "world"]
'cruel world'.split('uel') # => ["cr", " world"]

p 'now is the time'.sub /now/, 'tomorrow'
p 'now is the time'.tr 'nit', 'xyz'
p 'now is the time'.gsub! /is the/, "it's"

p 'have to find mind this time'.tr! 'hte', '$pz'
