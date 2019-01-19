class MyHash
  def initialize
    @internal_hash = {}
  end

  def [](*keys)
    @internal_hash[*keys.join(', ')]
  end

  def []=(*params)
    value = *params.pop
    @internal_hash[params.join(', ')] = value
  end
end

mh = MyHash.new
mh[3] = 'Fandango'
mh[:age, :dob, :gender, 'Model'] = 32
p mh

puts `date`
