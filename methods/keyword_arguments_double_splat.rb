# Double splat
def search(field, genre: nil, duration: 120, **rest)
  p [field, genre, duration, **rest]

  stars = rest[:stars] if rest.key?(:stars)
  tempo = rest[:tempo] if rest.key?(:tempo)
  p [stars, tempo]
end

search(:title)
search(:title, duration: 432)
search(:title, draton: 777)
search(:title, genre: 'pop', duration: 432, tempo: 'slow')

options = { duration: 123, stars: 3, genre: 'jazz', tempo: 'slow' }
search(:title, options)
