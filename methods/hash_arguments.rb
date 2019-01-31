# Double splat
options = { duration: 123, stars: 3, genre: 'jazz', tempo: 'slow' }

def search(field, genre: nil, duration: 120, **rest)
  stars = rest[:stars] if rest.key?(:stars)
  tempo = rest[:tempo] if rest.key?(:tempo)
  p [field, genre, duration, **rest]
end

search(:title, draton: 777)
search(:title, genre: 'pop', duration: 432, tempo: 'slow')
search(:title, options)
