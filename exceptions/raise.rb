name = nil
names = 'johnny', 'jane', 'shannon'

raise

raise 'Danger, Will Robinson!' if name.nil?

raise IndexError, "#{i} >= size (#{names.size})" if i >= names.size

raise ArgumentError, 'Name too big', caller[1..-1]
