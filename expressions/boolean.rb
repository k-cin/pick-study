nil && 99    # => nil
false && 99  # => false
'cat' && 99  # => 99

nil || 99    # => 99
false || 99  # => 99
'cat' || 99  # => 'cat'

name ||= 'default value'

