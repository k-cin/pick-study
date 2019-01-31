a = 1, 2, 3, 4
b = 3, 6, 9, 12

a, b = [3, 6, 9]

a, *b = 1, 2, 3, 4, 5, 6

a, b, c, d = *(1..2), 3, [4, 5]

a, *b, c = 1, 2, 3, 4, 5, 6

*a, b = 1, 2, 3, 4, 5

f, *g, h, i, j = 1, 2, 3, 4

# -------------------------------------------------------------------------------

def return_back(name: 'Johnny', age: 100, origin: 'United States', **rest)
  [name, age, origin, rest]
  end

name, age, origin = return_back(hair_color: 'blonde', language: 'english')
